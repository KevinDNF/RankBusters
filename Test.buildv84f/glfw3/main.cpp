
#include "main.h"

//${CONFIG_BEGIN}
#define CFG_BINARY_FILES *.bin|*.dat
#define CFG_BRL_DATABUFFER_IMPLEMENTED 1
#define CFG_BRL_FILESTREAM_IMPLEMENTED 1
#define CFG_BRL_GAMETARGET_IMPLEMENTED 1
#define CFG_BRL_SOCKET_IMPLEMENTED 1
#define CFG_BRL_STREAM_IMPLEMENTED 1
#define CFG_BRL_THREAD_IMPLEMENTED 1
#define CFG_CD 
#define CFG_CONFIG debug
#define CFG_CPP_GC_MODE 1
#define CFG_GLFW_SWAP_INTERVAL -1
#define CFG_GLFW_USE_MINGW 1
#define CFG_GLFW_VERSION 3
#define CFG_GLFW_WINDOW_DECORATED 1
#define CFG_GLFW_WINDOW_FLOATING 0
#define CFG_GLFW_WINDOW_FULLSCREEN 0
#define CFG_GLFW_WINDOW_HEIGHT 720
#define CFG_GLFW_WINDOW_RESIZABLE 0
#define CFG_GLFW_WINDOW_SAMPLES 0
#define CFG_GLFW_WINDOW_TITLE GameBuster
#define CFG_GLFW_WINDOW_WIDTH 1280
#define CFG_HOST winnt
#define CFG_IMAGE_FILES *.png|*.jpg
#define CFG_LANG cpp
#define CFG_MODPATH 
#define CFG_MOJO_AUTO_SUSPEND_ENABLED 1
#define CFG_MOJO_DRIVER_IMPLEMENTED 1
#define CFG_MOJO_IMAGE_FILTERING_ENABLED 1
#define CFG_MUSIC_FILES *.wav|*.ogg
#define CFG_OPENGL_DEPTH_BUFFER_ENABLED 0
#define CFG_OPENGL_GLES20_ENABLED 0
#define CFG_SAFEMODE 0
#define CFG_SOUND_FILES *.wav|*.ogg
#define CFG_TARGET glfw
#define CFG_TEXT_FILES *.txt|*.xml|*.json
//${CONFIG_END}

//${TRANSCODE_BEGIN}

#include <wctype.h>
#include <locale.h>

// C++ Monkey runtime.
//
// Placed into the public domain 24/02/2011.
// No warranty implied; use at your own risk.

//***** Monkey Types *****

typedef wchar_t Char;
template<class T> class Array;
class String;
class Object;

#if CFG_CPP_DOUBLE_PRECISION_FLOATS
typedef double Float;
#define FLOAT(X) X
#else
typedef float Float;
#define FLOAT(X) X##f
#endif

void dbg_error( const char *p );

#if !_MSC_VER
#define sprintf_s sprintf
#define sscanf_s sscanf
#endif

//***** GC Config *****

#if CFG_CPP_GC_DEBUG
#define DEBUG_GC 1
#else
#define DEBUG_GC 0
#endif

// GC mode:
//
// 0 = disabled
// 1 = Incremental GC every OnWhatever
// 2 = Incremental GC every allocation
//
#ifndef CFG_CPP_GC_MODE
#define CFG_CPP_GC_MODE 1
#endif

//How many bytes alloced to trigger GC
//
#ifndef CFG_CPP_GC_TRIGGER
#define CFG_CPP_GC_TRIGGER 8*1024*1024
#endif

//GC_MODE 2 needs to track locals on a stack - this may need to be bumped if your app uses a LOT of locals, eg: is heavily recursive...
//
#ifndef CFG_CPP_GC_MAX_LOCALS
#define CFG_CPP_GC_MAX_LOCALS 8192
#endif

// ***** GC *****

#if _WIN32

int gc_micros(){
	static int f;
	static LARGE_INTEGER pcf;
	if( !f ){
		if( QueryPerformanceFrequency( &pcf ) && pcf.QuadPart>=1000000L ){
			pcf.QuadPart/=1000000L;
			f=1;
		}else{
			f=-1;
		}
	}
	if( f>0 ){
		LARGE_INTEGER pc;
		if( QueryPerformanceCounter( &pc ) ) return pc.QuadPart/pcf.QuadPart;
		f=-1;
	}
	return 0;// timeGetTime()*1000;
}

#elif __APPLE__

#include <mach/mach_time.h>

int gc_micros(){
	static int f;
	static mach_timebase_info_data_t timeInfo;
	if( !f ){
		mach_timebase_info( &timeInfo );
		timeInfo.denom*=1000L;
		f=1;
	}
	return mach_absolute_time()*timeInfo.numer/timeInfo.denom;
}

#else

int gc_micros(){
	return 0;
}

#endif

#define gc_mark_roots gc_mark

void gc_mark_roots();

struct gc_object;

gc_object *gc_object_alloc( int size );
void gc_object_free( gc_object *p );

struct gc_object{
	gc_object *succ;
	gc_object *pred;
	int flags;
	
	virtual ~gc_object(){
	}
	
	virtual void mark(){
	}
	
	void *operator new( size_t size ){
		return gc_object_alloc( size );
	}
	
	void operator delete( void *p ){
		gc_object_free( (gc_object*)p );
	}
};

gc_object gc_free_list;
gc_object gc_marked_list;
gc_object gc_unmarked_list;
gc_object gc_queued_list;	//doesn't really need to be doubly linked...

int gc_free_bytes;
int gc_marked_bytes;
int gc_alloced_bytes;
int gc_max_alloced_bytes;
int gc_new_bytes;
int gc_markbit=1;

gc_object *gc_cache[8];

void gc_collect_all();
void gc_mark_queued( int n );

#define GC_CLEAR_LIST( LIST ) ((LIST).succ=(LIST).pred=&(LIST))

#define GC_LIST_IS_EMPTY( LIST ) ((LIST).succ==&(LIST))

#define GC_REMOVE_NODE( NODE ){\
(NODE)->pred->succ=(NODE)->succ;\
(NODE)->succ->pred=(NODE)->pred;}

#define GC_INSERT_NODE( NODE,SUCC ){\
(NODE)->pred=(SUCC)->pred;\
(NODE)->succ=(SUCC);\
(SUCC)->pred->succ=(NODE);\
(SUCC)->pred=(NODE);}

void gc_init1(){
	GC_CLEAR_LIST( gc_free_list );
	GC_CLEAR_LIST( gc_marked_list );
	GC_CLEAR_LIST( gc_unmarked_list);
	GC_CLEAR_LIST( gc_queued_list );
}

void gc_init2(){
	gc_mark_roots();
}

#if CFG_CPP_GC_MODE==2

int gc_ctor_nest;
gc_object *gc_locals[CFG_CPP_GC_MAX_LOCALS],**gc_locals_sp=gc_locals;

struct gc_ctor{
	gc_ctor(){ ++gc_ctor_nest; }
	~gc_ctor(){ --gc_ctor_nest; }
};

struct gc_enter{
	gc_object **sp;
	gc_enter():sp(gc_locals_sp){
	}
	~gc_enter(){
#if DEBUG_GC
		static int max_locals;
		int n=gc_locals_sp-gc_locals;
		if( n>max_locals ){
			max_locals=n;
			printf( "max_locals=%i\n",n );
		}
#endif		
		gc_locals_sp=sp;
	}
};

#define GC_CTOR gc_ctor _c;
#define GC_ENTER gc_enter _e;

#else

struct gc_ctor{
};
struct gc_enter{
};

#define GC_CTOR
#define GC_ENTER

#endif

//Can be modified off thread!
static volatile int gc_ext_new_bytes;

#if _MSC_VER
#define atomic_add(P,V) InterlockedExchangeAdd((volatile unsigned int*)P,V)			//(*(P)+=(V))
#define atomic_sub(P,V) InterlockedExchangeSubtract((volatile unsigned int*)P,V)	//(*(P)-=(V))
#else
#define atomic_add(P,V) __sync_fetch_and_add(P,V)
#define atomic_sub(P,V) __sync_fetch_and_sub(P,V)
#endif

//Careful! May be called off thread!
//
void gc_ext_malloced( int size ){
	atomic_add( &gc_ext_new_bytes,size );
}

void gc_object_free( gc_object *p ){

	int size=p->flags & ~7;
	gc_free_bytes-=size;
	
	if( size<64 ){
		p->succ=gc_cache[size>>3];
		gc_cache[size>>3]=p;
	}else{
		free( p );
	}
}

void gc_flush_free( int size ){

	int t=gc_free_bytes-size;
	if( t<0 ) t=0;
	
	while( gc_free_bytes>t ){
	
		gc_object *p=gc_free_list.succ;

		GC_REMOVE_NODE( p );

#if DEBUG_GC
//		printf( "deleting @%p\n",p );fflush( stdout );
//		p->flags|=4;
//		continue;
#endif
		delete p;
	}
}

gc_object *gc_object_alloc( int size ){

	size=(size+7)&~7;
	
	gc_new_bytes+=size;
	
#if CFG_CPP_GC_MODE==2

	if( !gc_ctor_nest ){

#if DEBUG_GC
		int ms=gc_micros();
#endif
		if( gc_new_bytes+gc_ext_new_bytes>(CFG_CPP_GC_TRIGGER) ){
			atomic_sub( &gc_ext_new_bytes,gc_ext_new_bytes );
			gc_collect_all();
			gc_new_bytes=0;
		}else{
			gc_mark_queued( (long long)(gc_new_bytes)*(gc_alloced_bytes-gc_new_bytes)/(CFG_CPP_GC_TRIGGER)+gc_new_bytes );
		}

#if DEBUG_GC
		ms=gc_micros()-ms;
		if( ms>=100 ) {printf( "gc time:%i\n",ms );fflush( stdout );}
#endif
	}
	
#endif

	gc_flush_free( size );

	gc_object *p;
	if( size<64 && (p=gc_cache[size>>3]) ){
		gc_cache[size>>3]=p->succ;
	}else{
		p=(gc_object*)malloc( size );
	}
	
	p->flags=size|gc_markbit;
	GC_INSERT_NODE( p,&gc_unmarked_list );

	gc_alloced_bytes+=size;
	if( gc_alloced_bytes>gc_max_alloced_bytes ) gc_max_alloced_bytes=gc_alloced_bytes;
	
#if CFG_CPP_GC_MODE==2
	*gc_locals_sp++=p;
#endif

	return p;
}

#if DEBUG_GC

template<class T> gc_object *to_gc_object( T *t ){
	gc_object *p=dynamic_cast<gc_object*>(t);
	if( p && (p->flags & 4) ){
		printf( "gc error : object already deleted @%p\n",p );fflush( stdout );
		exit(-1);
	}
	return p;
}

#else

#define to_gc_object(t) dynamic_cast<gc_object*>(t)

#endif

template<class T> T *gc_retain( T *t ){
#if CFG_CPP_GC_MODE==2
	*gc_locals_sp++=to_gc_object( t );
#endif
	return t;
}

template<class T> void gc_mark( T *t ){

	gc_object *p=to_gc_object( t );
	
	if( p && (p->flags & 3)==gc_markbit ){
		p->flags^=1;
		GC_REMOVE_NODE( p );
		GC_INSERT_NODE( p,&gc_marked_list );
		gc_marked_bytes+=(p->flags & ~7);
		p->mark();
	}
}

template<class T> void gc_mark_q( T *t ){

	gc_object *p=to_gc_object( t );
	
	if( p && (p->flags & 3)==gc_markbit ){
		p->flags^=1;
		GC_REMOVE_NODE( p );
		GC_INSERT_NODE( p,&gc_queued_list );
	}
}

template<class T,class V> void gc_assign( T *&lhs,V *rhs ){

	gc_object *p=to_gc_object( rhs );
	
	if( p && (p->flags & 3)==gc_markbit ){
		p->flags^=1;
		GC_REMOVE_NODE( p );
		GC_INSERT_NODE( p,&gc_queued_list );
	}
	lhs=rhs;
}

void gc_mark_locals(){

#if CFG_CPP_GC_MODE==2
	for( gc_object **pp=gc_locals;pp!=gc_locals_sp;++pp ){
		gc_object *p=*pp;
		if( p && (p->flags & 3)==gc_markbit ){
			p->flags^=1;
			GC_REMOVE_NODE( p );
			GC_INSERT_NODE( p,&gc_marked_list );
			gc_marked_bytes+=(p->flags & ~7);
			p->mark();
		}
	}
#endif	
}

void gc_mark_queued( int n ){
	while( gc_marked_bytes<n && !GC_LIST_IS_EMPTY( gc_queued_list ) ){
		gc_object *p=gc_queued_list.succ;
		GC_REMOVE_NODE( p );
		GC_INSERT_NODE( p,&gc_marked_list );
		gc_marked_bytes+=(p->flags & ~7);
		p->mark();
	}
}

void gc_validate_list( gc_object &list,const char *msg ){
	gc_object *node=list.succ;
	while( node ){
		if( node==&list ) return;
		if( !node->pred ) break;
		if( node->pred->succ!=node ) break;
		node=node->succ;
	}
	if( msg ){
		puts( msg );fflush( stdout );
	}
	puts( "LIST ERROR!" );
	exit(-1);
}

//returns reclaimed bytes
void gc_sweep(){

	int reclaimed_bytes=gc_alloced_bytes-gc_marked_bytes;
	
	if( reclaimed_bytes ){
	
		//append unmarked list to end of free list
		gc_object *head=gc_unmarked_list.succ;
		gc_object *tail=gc_unmarked_list.pred;
		gc_object *succ=&gc_free_list;
		gc_object *pred=succ->pred;
		
		head->pred=pred;
		tail->succ=succ;
		pred->succ=head;
		succ->pred=tail;
		
		gc_free_bytes+=reclaimed_bytes;
	}

	//move marked to unmarked.
	if( GC_LIST_IS_EMPTY( gc_marked_list ) ){
		GC_CLEAR_LIST( gc_unmarked_list );
	}else{
		gc_unmarked_list.succ=gc_marked_list.succ;
		gc_unmarked_list.pred=gc_marked_list.pred;
		gc_unmarked_list.succ->pred=gc_unmarked_list.pred->succ=&gc_unmarked_list;
		GC_CLEAR_LIST( gc_marked_list );
	}
	
	//adjust sizes
	gc_alloced_bytes=gc_marked_bytes;
	gc_marked_bytes=0;
	gc_markbit^=1;
}

void gc_collect_all(){

//	puts( "Mark locals" );
	gc_mark_locals();

//	puts( "Marked queued" );
	gc_mark_queued( 0x7fffffff );

//	puts( "Sweep" );
	gc_sweep();

//	puts( "Mark roots" );
	gc_mark_roots();

#if DEBUG_GC
	gc_validate_list( gc_marked_list,"Validating gc_marked_list"  );
	gc_validate_list( gc_unmarked_list,"Validating gc_unmarked_list"  );
	gc_validate_list( gc_free_list,"Validating gc_free_list" );
#endif

}

void gc_collect(){
	
#if CFG_CPP_GC_MODE==1

#if DEBUG_GC
	int ms=gc_micros();
#endif

	if( gc_new_bytes+gc_ext_new_bytes>(CFG_CPP_GC_TRIGGER) ){
		atomic_sub( &gc_ext_new_bytes,gc_ext_new_bytes );
		gc_collect_all();
		gc_new_bytes=0;
	}else{
		gc_mark_queued( (long long)(gc_new_bytes)*(gc_alloced_bytes-gc_new_bytes)/(CFG_CPP_GC_TRIGGER)+gc_new_bytes );
	}

#if DEBUG_GC
	ms=gc_micros()-ms;
//	if( ms>=100 ) {printf( "gc time:%i\n",ms );fflush( stdout );}
	if( ms>10 ) {printf( "gc time:%i\n",ms );fflush( stdout );}
#endif

#endif
}

// ***** Array *****

template<class T> T *t_memcpy( T *dst,const T *src,int n ){
	memcpy( dst,src,n*sizeof(T) );
	return dst+n;
}

template<class T> T *t_memset( T *dst,int val,int n ){
	memset( dst,val,n*sizeof(T) );
	return dst+n;
}

template<class T> int t_memcmp( const T *x,const T *y,int n ){
	return memcmp( x,y,n*sizeof(T) );
}

template<class T> int t_strlen( const T *p ){
	const T *q=p++;
	while( *q++ ){}
	return q-p;
}

template<class T> T *t_create( int n,T *p ){
	t_memset( p,0,n );
	return p+n;
}

template<class T> T *t_create( int n,T *p,const T *q ){
	t_memcpy( p,q,n );
	return p+n;
}

template<class T> void t_destroy( int n,T *p ){
}

template<class T> void gc_mark_elements( int n,T *p ){
}

template<class T> void gc_mark_elements( int n,T **p ){
	for( int i=0;i<n;++i ) gc_mark( p[i] );
}

template<class T> class Array{
public:
	Array():rep( &nullRep ){
	}

	//Uses default...
//	Array( const Array<T> &t )...
	
	Array( int length ):rep( Rep::alloc( length ) ){
		t_create( rep->length,rep->data );
	}
	
	Array( const T *p,int length ):rep( Rep::alloc(length) ){
		t_create( rep->length,rep->data,p );
	}
	
	~Array(){
	}

	//Uses default...
//	Array &operator=( const Array &t )...
	
	int Length()const{ 
		return rep->length; 
	}
	
	T &At( int index ){
		if( index<0 || index>=rep->length ) dbg_error( "Array index out of range" );
		return rep->data[index]; 
	}
	
	const T &At( int index )const{
		if( index<0 || index>=rep->length ) dbg_error( "Array index out of range" );
		return rep->data[index]; 
	}
	
	T &operator[]( int index ){
		return rep->data[index]; 
	}

	const T &operator[]( int index )const{
		return rep->data[index]; 
	}
	
	Array Slice( int from,int term )const{
		int len=rep->length;
		if( from<0 ){ 
			from+=len;
			if( from<0 ) from=0;
		}else if( from>len ){
			from=len;
		}
		if( term<0 ){
			term+=len;
		}else if( term>len ){
			term=len;
		}
		if( term<=from ) return Array();
		return Array( rep->data+from,term-from );
	}

	Array Slice( int from )const{
		return Slice( from,rep->length );
	}
	
	Array Resize( int newlen )const{
		if( newlen<=0 ) return Array();
		int n=rep->length;
		if( newlen<n ) n=newlen;
		Rep *p=Rep::alloc( newlen );
		T *q=p->data;
		q=t_create( n,q,rep->data );
		q=t_create( (newlen-n),q );
		return Array( p );
	}
	
private:
	struct Rep : public gc_object{
		int length;
		T data[0];
		
		Rep():length(0){
			flags=3;
		}
		
		Rep( int length ):length(length){
		}
		
		~Rep(){
			t_destroy( length,data );
		}
		
		void mark(){
			gc_mark_elements( length,data );
		}
		
		static Rep *alloc( int length ){
			if( !length ) return &nullRep;
			void *p=gc_object_alloc( sizeof(Rep)+length*sizeof(T) );
			return ::new(p) Rep( length );
		}
		
	};
	Rep *rep;
	
	static Rep nullRep;
	
	template<class C> friend void gc_mark( Array<C> t );
	template<class C> friend void gc_mark_q( Array<C> t );
	template<class C> friend Array<C> gc_retain( Array<C> t );
	template<class C> friend void gc_assign( Array<C> &lhs,Array<C> rhs );
	template<class C> friend void gc_mark_elements( int n,Array<C> *p );
	
	Array( Rep *rep ):rep(rep){
	}
};

template<class T> typename Array<T>::Rep Array<T>::nullRep;

template<class T> Array<T> *t_create( int n,Array<T> *p ){
	for( int i=0;i<n;++i ) *p++=Array<T>();
	return p;
}

template<class T> Array<T> *t_create( int n,Array<T> *p,const Array<T> *q ){
	for( int i=0;i<n;++i ) *p++=*q++;
	return p;
}

template<class T> void gc_mark( Array<T> t ){
	gc_mark( t.rep );
}

template<class T> void gc_mark_q( Array<T> t ){
	gc_mark_q( t.rep );
}

template<class T> Array<T> gc_retain( Array<T> t ){
#if CFG_CPP_GC_MODE==2
	gc_retain( t.rep );
#endif
	return t;
}

template<class T> void gc_assign( Array<T> &lhs,Array<T> rhs ){
	gc_mark( rhs.rep );
	lhs=rhs;
}

template<class T> void gc_mark_elements( int n,Array<T> *p ){
	for( int i=0;i<n;++i ) gc_mark( p[i].rep );
}
		
// ***** String *****

static const char *_str_load_err;

class String{
public:
	String():rep( &nullRep ){
	}
	
	String( const String &t ):rep( t.rep ){
		rep->retain();
	}

	String( int n ){
		char buf[256];
		sprintf_s( buf,"%i",n );
		rep=Rep::alloc( t_strlen(buf) );
		for( int i=0;i<rep->length;++i ) rep->data[i]=buf[i];
	}
	
	String( Float n ){
		char buf[256];
		
		//would rather use snprintf, but it's doing weird things in MingW.
		//
		sprintf_s( buf,"%.17lg",n );
		//
		char *p;
		for( p=buf;*p;++p ){
			if( *p=='.' || *p=='e' ) break;
		}
		if( !*p ){
			*p++='.';
			*p++='0';
			*p=0;
		}

		rep=Rep::alloc( t_strlen(buf) );
		for( int i=0;i<rep->length;++i ) rep->data[i]=buf[i];
	}

	String( Char ch,int length ):rep( Rep::alloc(length) ){
		for( int i=0;i<length;++i ) rep->data[i]=ch;
	}

	String( const Char *p ):rep( Rep::alloc(t_strlen(p)) ){
		t_memcpy( rep->data,p,rep->length );
	}

	String( const Char *p,int length ):rep( Rep::alloc(length) ){
		t_memcpy( rep->data,p,rep->length );
	}
	
#if __OBJC__	
	String( NSString *nsstr ):rep( Rep::alloc([nsstr length]) ){
		unichar *buf=(unichar*)malloc( rep->length * sizeof(unichar) );
		[nsstr getCharacters:buf range:NSMakeRange(0,rep->length)];
		for( int i=0;i<rep->length;++i ) rep->data[i]=buf[i];
		free( buf );
	}
#endif

#if __cplusplus_winrt
	String( Platform::String ^str ):rep( Rep::alloc(str->Length()) ){
		for( int i=0;i<rep->length;++i ) rep->data[i]=str->Data()[i];
	}
#endif

	~String(){
		rep->release();
	}
	
	template<class C> String( const C *p ):rep( Rep::alloc(t_strlen(p)) ){
		for( int i=0;i<rep->length;++i ) rep->data[i]=p[i];
	}
	
	template<class C> String( const C *p,int length ):rep( Rep::alloc(length) ){
		for( int i=0;i<rep->length;++i ) rep->data[i]=p[i];
	}
	
	String Copy()const{
		Rep *crep=Rep::alloc( rep->length );
		t_memcpy( crep->data,rep->data,rep->length );
		return String( crep );
	}
	
	int Length()const{
		return rep->length;
	}
	
	const Char *Data()const{
		return rep->data;
	}
	
	Char At( int index )const{
		if( index<0 || index>=rep->length ) dbg_error( "Character index out of range" );
		return rep->data[index]; 
	}
	
	Char operator[]( int index )const{
		return rep->data[index];
	}
	
	String &operator=( const String &t ){
		t.rep->retain();
		rep->release();
		rep=t.rep;
		return *this;
	}
	
	String &operator+=( const String &t ){
		return operator=( *this+t );
	}
	
	int Compare( const String &t )const{
		int n=rep->length<t.rep->length ? rep->length : t.rep->length;
		for( int i=0;i<n;++i ){
			if( int q=(int)(rep->data[i])-(int)(t.rep->data[i]) ) return q;
		}
		return rep->length-t.rep->length;
	}
	
	bool operator==( const String &t )const{
		return rep->length==t.rep->length && t_memcmp( rep->data,t.rep->data,rep->length )==0;
	}
	
	bool operator!=( const String &t )const{
		return rep->length!=t.rep->length || t_memcmp( rep->data,t.rep->data,rep->length )!=0;
	}
	
	bool operator<( const String &t )const{
		return Compare( t )<0;
	}
	
	bool operator<=( const String &t )const{
		return Compare( t )<=0;
	}
	
	bool operator>( const String &t )const{
		return Compare( t )>0;
	}
	
	bool operator>=( const String &t )const{
		return Compare( t )>=0;
	}
	
	String operator+( const String &t )const{
		if( !rep->length ) return t;
		if( !t.rep->length ) return *this;
		Rep *p=Rep::alloc( rep->length+t.rep->length );
		Char *q=p->data;
		q=t_memcpy( q,rep->data,rep->length );
		q=t_memcpy( q,t.rep->data,t.rep->length );
		return String( p );
	}
	
	int Find( String find,int start=0 )const{
		if( start<0 ) start=0;
		while( start+find.rep->length<=rep->length ){
			if( !t_memcmp( rep->data+start,find.rep->data,find.rep->length ) ) return start;
			++start;
		}
		return -1;
	}
	
	int FindLast( String find )const{
		int start=rep->length-find.rep->length;
		while( start>=0 ){
			if( !t_memcmp( rep->data+start,find.rep->data,find.rep->length ) ) return start;
			--start;
		}
		return -1;
	}
	
	int FindLast( String find,int start )const{
		if( start>rep->length-find.rep->length ) start=rep->length-find.rep->length;
		while( start>=0 ){
			if( !t_memcmp( rep->data+start,find.rep->data,find.rep->length ) ) return start;
			--start;
		}
		return -1;
	}
	
	String Trim()const{
		int i=0,i2=rep->length;
		while( i<i2 && rep->data[i]<=32 ) ++i;
		while( i2>i && rep->data[i2-1]<=32 ) --i2;
		if( i==0 && i2==rep->length ) return *this;
		return String( rep->data+i,i2-i );
	}

	Array<String> Split( String sep )const{
	
		if( !sep.rep->length ){
			Array<String> bits( rep->length );
			for( int i=0;i<rep->length;++i ){
				bits[i]=String( (Char)(*this)[i],1 );
			}
			return bits;
		}
		
		int i=0,i2,n=1;
		while( (i2=Find( sep,i ))!=-1 ){
			++n;
			i=i2+sep.rep->length;
		}
		Array<String> bits( n );
		if( n==1 ){
			bits[0]=*this;
			return bits;
		}
		i=0;n=0;
		while( (i2=Find( sep,i ))!=-1 ){
			bits[n++]=Slice( i,i2 );
			i=i2+sep.rep->length;
		}
		bits[n]=Slice( i );
		return bits;
	}

	String Join( Array<String> bits )const{
		if( bits.Length()==0 ) return String();
		if( bits.Length()==1 ) return bits[0];
		int newlen=rep->length * (bits.Length()-1);
		for( int i=0;i<bits.Length();++i ){
			newlen+=bits[i].rep->length;
		}
		Rep *p=Rep::alloc( newlen );
		Char *q=p->data;
		q=t_memcpy( q,bits[0].rep->data,bits[0].rep->length );
		for( int i=1;i<bits.Length();++i ){
			q=t_memcpy( q,rep->data,rep->length );
			q=t_memcpy( q,bits[i].rep->data,bits[i].rep->length );
		}
		return String( p );
	}

	String Replace( String find,String repl )const{
		int i=0,i2,newlen=0;
		while( (i2=Find( find,i ))!=-1 ){
			newlen+=(i2-i)+repl.rep->length;
			i=i2+find.rep->length;
		}
		if( !i ) return *this;
		newlen+=rep->length-i;
		Rep *p=Rep::alloc( newlen );
		Char *q=p->data;
		i=0;
		while( (i2=Find( find,i ))!=-1 ){
			q=t_memcpy( q,rep->data+i,i2-i );
			q=t_memcpy( q,repl.rep->data,repl.rep->length );
			i=i2+find.rep->length;
		}
		q=t_memcpy( q,rep->data+i,rep->length-i );
		return String( p );
	}

	String ToLower()const{
		for( int i=0;i<rep->length;++i ){
			Char t=towlower( rep->data[i] );
			if( t==rep->data[i] ) continue;
			Rep *p=Rep::alloc( rep->length );
			Char *q=p->data;
			t_memcpy( q,rep->data,i );
			for( q[i++]=t;i<rep->length;++i ){
				q[i]=towlower( rep->data[i] );
			}
			return String( p );
		}
		return *this;
	}

	String ToUpper()const{
		for( int i=0;i<rep->length;++i ){
			Char t=towupper( rep->data[i] );
			if( t==rep->data[i] ) continue;
			Rep *p=Rep::alloc( rep->length );
			Char *q=p->data;
			t_memcpy( q,rep->data,i );
			for( q[i++]=t;i<rep->length;++i ){
				q[i]=towupper( rep->data[i] );
			}
			return String( p );
		}
		return *this;
	}
	
	bool Contains( String sub )const{
		return Find( sub )!=-1;
	}

	bool StartsWith( String sub )const{
		return sub.rep->length<=rep->length && !t_memcmp( rep->data,sub.rep->data,sub.rep->length );
	}

	bool EndsWith( String sub )const{
		return sub.rep->length<=rep->length && !t_memcmp( rep->data+rep->length-sub.rep->length,sub.rep->data,sub.rep->length );
	}
	
	String Slice( int from,int term )const{
		int len=rep->length;
		if( from<0 ){
			from+=len;
			if( from<0 ) from=0;
		}else if( from>len ){
			from=len;
		}
		if( term<0 ){
			term+=len;
		}else if( term>len ){
			term=len;
		}
		if( term<from ) return String();
		if( from==0 && term==len ) return *this;
		return String( rep->data+from,term-from );
	}

	String Slice( int from )const{
		return Slice( from,rep->length );
	}
	
	Array<int> ToChars()const{
		Array<int> chars( rep->length );
		for( int i=0;i<rep->length;++i ) chars[i]=rep->data[i];
		return chars;
	}
	
	int ToInt()const{
		char buf[64];
		return atoi( ToCString<char>( buf,sizeof(buf) ) );
	}
	
	Float ToFloat()const{
		char buf[256];
		return atof( ToCString<char>( buf,sizeof(buf) ) );
	}

	template<class C> class CString{
		struct Rep{
			int refs;
			C data[1];
		};
		Rep *_rep;
		static Rep _nul;
	public:
		template<class T> CString( const T *data,int length ){
			_rep=(Rep*)malloc( length*sizeof(C)+sizeof(Rep) );
			_rep->refs=1;
			_rep->data[length]=0;
			for( int i=0;i<length;++i ){
				_rep->data[i]=(C)data[i];
			}
		}
		CString():_rep( new Rep ){
			_rep->refs=1;
		}
		CString( const CString &c ):_rep(c._rep){
			++_rep->refs;
		}
		~CString(){
			if( !--_rep->refs ) free( _rep );
		}
		CString &operator=( const CString &c ){
			++c._rep->refs;
			if( !--_rep->refs ) free( _rep );
			_rep=c._rep;
			return *this;
		}
		operator const C*()const{ 
			return _rep->data;
		}
	};
	
	template<class C> CString<C> ToCString()const{
		return CString<C>( rep->data,rep->length );
	}

	template<class C> C *ToCString( C *p,int length )const{
		if( --length>rep->length ) length=rep->length;
		for( int i=0;i<length;++i ) p[i]=rep->data[i];
		p[length]=0;
		return p;
	}
	
#if __OBJC__	
	NSString *ToNSString()const{
		return [NSString stringWithCharacters:ToCString<unichar>() length:rep->length];
	}
#endif

#if __cplusplus_winrt
	Platform::String ^ToWinRTString()const{
		return ref new Platform::String( rep->data,rep->length );
	}
#endif
	CString<char> ToUtf8()const{
		std::vector<unsigned char> buf;
		Save( buf );
		return CString<char>( &buf[0],buf.size() );
	}

	bool Save( FILE *fp )const{
		std::vector<unsigned char> buf;
		Save( buf );
		return buf.size() ? fwrite( &buf[0],1,buf.size(),fp )==buf.size() : true;
	}
	
	void Save( std::vector<unsigned char> &buf )const{
	
		Char *p=rep->data;
		Char *e=p+rep->length;
		
		while( p<e ){
			Char c=*p++;
			if( c<0x80 ){
				buf.push_back( c );
			}else if( c<0x800 ){
				buf.push_back( 0xc0 | (c>>6) );
				buf.push_back( 0x80 | (c & 0x3f) );
			}else{
				buf.push_back( 0xe0 | (c>>12) );
				buf.push_back( 0x80 | ((c>>6) & 0x3f) );
				buf.push_back( 0x80 | (c & 0x3f) );
			}
		}
	}
	
	static String FromChars( Array<int> chars ){
		int n=chars.Length();
		Rep *p=Rep::alloc( n );
		for( int i=0;i<n;++i ){
			p->data[i]=chars[i];
		}
		return String( p );
	}

	static String Load( FILE *fp ){
		unsigned char tmp[4096];
		std::vector<unsigned char> buf;
		for(;;){
			int n=fread( tmp,1,4096,fp );
			if( n>0 ) buf.insert( buf.end(),tmp,tmp+n );
			if( n!=4096 ) break;
		}
		return buf.size() ? String::Load( &buf[0],buf.size() ) : String();
	}
	
	static String Load( unsigned char *p,int n ){
	
		_str_load_err=0;
		
		unsigned char *e=p+n;
		std::vector<Char> chars;
		
		int t0=n>0 ? p[0] : -1;
		int t1=n>1 ? p[1] : -1;

		if( t0==0xfe && t1==0xff ){
			p+=2;
			while( p<e-1 ){
				int c=*p++;
				chars.push_back( (c<<8)|*p++ );
			}
		}else if( t0==0xff && t1==0xfe ){
			p+=2;
			while( p<e-1 ){
				int c=*p++;
				chars.push_back( (*p++<<8)|c );
			}
		}else{
			int t2=n>2 ? p[2] : -1;
			if( t0==0xef && t1==0xbb && t2==0xbf ) p+=3;
			unsigned char *q=p;
			bool fail=false;
			while( p<e ){
				unsigned int c=*p++;
				if( c & 0x80 ){
					if( (c & 0xe0)==0xc0 ){
						if( p>=e || (p[0] & 0xc0)!=0x80 ){
							fail=true;
							break;
						}
						c=((c & 0x1f)<<6) | (p[0] & 0x3f);
						p+=1;
					}else if( (c & 0xf0)==0xe0 ){
						if( p+1>=e || (p[0] & 0xc0)!=0x80 || (p[1] & 0xc0)!=0x80 ){
							fail=true;
							break;
						}
						c=((c & 0x0f)<<12) | ((p[0] & 0x3f)<<6) | (p[1] & 0x3f);
						p+=2;
					}else{
						fail=true;
						break;
					}
				}
				chars.push_back( c );
			}
			if( fail ){
				_str_load_err="Invalid UTF-8";
				return String( q,n );
			}
		}
		return chars.size() ? String( &chars[0],chars.size() ) : String();
	}

private:
	
	struct Rep{
		int refs;
		int length;
		Char data[0];
		
		Rep():refs(1),length(0){
		}
		
		Rep( int length ):refs(1),length(length){
		}
		
		void retain(){
//			atomic_add( &refs,1 );
			++refs;
		}
		
		void release(){
//			if( atomic_sub( &refs,1 )>1 || this==&nullRep ) return;
			if( --refs || this==&nullRep ) return;
			free( this );
		}

		static Rep *alloc( int length ){
			if( !length ) return &nullRep;
			void *p=malloc( sizeof(Rep)+length*sizeof(Char) );
			return new(p) Rep( length );
		}
	};
	Rep *rep;
	
	static Rep nullRep;
	
	String( Rep *rep ):rep(rep){
	}
};

String::Rep String::nullRep;

String *t_create( int n,String *p ){
	for( int i=0;i<n;++i ) new( &p[i] ) String();
	return p+n;
}

String *t_create( int n,String *p,const String *q ){
	for( int i=0;i<n;++i ) new( &p[i] ) String( q[i] );
	return p+n;
}

void t_destroy( int n,String *p ){
	for( int i=0;i<n;++i ) p[i].~String();
}

// ***** Object *****

String dbg_stacktrace();

class Object : public gc_object{
public:
	virtual bool Equals( Object *obj ){
		return this==obj;
	}
	
	virtual int Compare( Object *obj ){
		return (char*)this-(char*)obj;
	}
	
	virtual String debug(){
		return "+Object\n";
	}
};

class ThrowableObject : public Object{
#ifndef NDEBUG
public:
	String stackTrace;
	ThrowableObject():stackTrace( dbg_stacktrace() ){}
#endif
};

struct gc_interface{
	virtual ~gc_interface(){}
};

//***** Debugger *****

//#define Error bbError
//#define Print bbPrint

int bbPrint( String t );

#define dbg_stream stderr

#if _MSC_VER
#define dbg_typeof decltype
#else
#define dbg_typeof __typeof__
#endif 

struct dbg_func;
struct dbg_var_type;

static int dbg_suspend;
static int dbg_stepmode;

const char *dbg_info;
String dbg_exstack;

static void *dbg_var_buf[65536*3];
static void **dbg_var_ptr=dbg_var_buf;

static dbg_func *dbg_func_buf[1024];
static dbg_func **dbg_func_ptr=dbg_func_buf;

String dbg_type( bool *p ){
	return "Bool";
}

String dbg_type( int *p ){
	return "Int";
}

String dbg_type( Float *p ){
	return "Float";
}

String dbg_type( String *p ){
	return "String";
}

template<class T> String dbg_type( T **p ){
	return "Object";
}

template<class T> String dbg_type( Array<T> *p ){
	return dbg_type( &(*p)[0] )+"[]";
}

String dbg_value( bool *p ){
	return *p ? "True" : "False";
}

String dbg_value( int *p ){
	return String( *p );
}

String dbg_value( Float *p ){
	return String( *p );
}

String dbg_value( String *p ){
	String t=*p;
	if( t.Length()>100 ) t=t.Slice( 0,100 )+"...";
	t=t.Replace( "\"","~q" );
	t=t.Replace( "\t","~t" );
	t=t.Replace( "\n","~n" );
	t=t.Replace( "\r","~r" );
	return String("\"")+t+"\"";
}

template<class T> String dbg_value( T **t ){
	Object *p=dynamic_cast<Object*>( *t );
	char buf[64];
	sprintf_s( buf,"%p",p );
	return String("@") + (buf[0]=='0' && buf[1]=='x' ? buf+2 : buf );
}

template<class T> String dbg_value( Array<T> *p ){
	String t="[";
	int n=(*p).Length();
	if( n>100 ) n=100;
	for( int i=0;i<n;++i ){
		if( i ) t+=",";
		t+=dbg_value( &(*p)[i] );
	}
	return t+"]";
}

String dbg_ptr_value( void *p ){
	char buf[64];
	sprintf_s( buf,"%p",p );
	return (buf[0]=='0' && buf[1]=='x' ? buf+2 : buf );
}

template<class T> String dbg_decl( const char *id,T *ptr ){
	return String( id )+":"+dbg_type(ptr)+"="+dbg_value(ptr)+"\n";
}

struct dbg_var_type{
	virtual String type( void *p )=0;
	virtual String value( void *p )=0;
};

template<class T> struct dbg_var_type_t : public dbg_var_type{

	String type( void *p ){
		return dbg_type( (T*)p );
	}
	
	String value( void *p ){
		return dbg_value( (T*)p );
	}
	
	static dbg_var_type_t<T> info;
};
template<class T> dbg_var_type_t<T> dbg_var_type_t<T>::info;

struct dbg_blk{
	void **var_ptr;
	
	dbg_blk():var_ptr(dbg_var_ptr){
		if( dbg_stepmode=='l' ) --dbg_suspend;
	}
	
	~dbg_blk(){
		if( dbg_stepmode=='l' ) ++dbg_suspend;
		dbg_var_ptr=var_ptr;
	}
};

struct dbg_func : public dbg_blk{
	const char *id;
	const char *info;

	dbg_func( const char *p ):id(p),info(dbg_info){
		*dbg_func_ptr++=this;
		if( dbg_stepmode=='s' ) --dbg_suspend;
	}
	
	~dbg_func(){
		if( dbg_stepmode=='s' ) ++dbg_suspend;
		--dbg_func_ptr;
		dbg_info=info;
	}
};

int dbg_print( String t ){
	static char *buf;
	static int len;
	int n=t.Length();
	if( n+100>len ){
		len=n+100;
		free( buf );
		buf=(char*)malloc( len );
	}
	buf[n]='\n';
	for( int i=0;i<n;++i ) buf[i]=t[i];
	fwrite( buf,n+1,1,dbg_stream );
	fflush( dbg_stream );
	return 0;
}

void dbg_callstack(){

	void **var_ptr=dbg_var_buf;
	dbg_func **func_ptr=dbg_func_buf;
	
	while( var_ptr!=dbg_var_ptr ){
		while( func_ptr!=dbg_func_ptr && var_ptr==(*func_ptr)->var_ptr ){
			const char *id=(*func_ptr++)->id;
			const char *info=func_ptr!=dbg_func_ptr ? (*func_ptr)->info : dbg_info;
			fprintf( dbg_stream,"+%s;%s\n",id,info );
		}
		void *vp=*var_ptr++;
		const char *nm=(const char*)*var_ptr++;
		dbg_var_type *ty=(dbg_var_type*)*var_ptr++;
		dbg_print( String(nm)+":"+ty->type(vp)+"="+ty->value(vp) );
	}
	while( func_ptr!=dbg_func_ptr ){
		const char *id=(*func_ptr++)->id;
		const char *info=func_ptr!=dbg_func_ptr ? (*func_ptr)->info : dbg_info;
		fprintf( dbg_stream,"+%s;%s\n",id,info );
	}
}

String dbg_stacktrace(){
	if( !dbg_info || !dbg_info[0] ) return "";
	String str=String( dbg_info )+"\n";
	dbg_func **func_ptr=dbg_func_ptr;
	if( func_ptr==dbg_func_buf ) return str;
	while( --func_ptr!=dbg_func_buf ){
		str+=String( (*func_ptr)->info )+"\n";
	}
	return str;
}

void dbg_throw( const char *err ){
	dbg_exstack=dbg_stacktrace();
	throw err;
}

void dbg_stop(){

#if TARGET_OS_IPHONE
	dbg_throw( "STOP" );
#endif

	fprintf( dbg_stream,"{{~~%s~~}}\n",dbg_info );
	dbg_callstack();
	dbg_print( "" );
	
	for(;;){

		char buf[256];
		char *e=fgets( buf,256,stdin );
		if( !e ) exit( -1 );
		
		e=strchr( buf,'\n' );
		if( !e ) exit( -1 );
		
		*e=0;
		
		Object *p;
		
		switch( buf[0] ){
		case '?':
			break;
		case 'r':	//run
			dbg_suspend=0;		
			dbg_stepmode=0;
			return;
		case 's':	//step
			dbg_suspend=1;
			dbg_stepmode='s';
			return;
		case 'e':	//enter func
			dbg_suspend=1;
			dbg_stepmode='e';
			return;
		case 'l':	//leave block
			dbg_suspend=0;
			dbg_stepmode='l';
			return;
		case '@':	//dump object
			p=0;
			sscanf_s( buf+1,"%p",&p );
			if( p ){
				dbg_print( p->debug() );
			}else{
				dbg_print( "" );
			}
			break;
		case 'q':	//quit!
			exit( 0 );
			break;			
		default:
			printf( "????? %s ?????",buf );fflush( stdout );
			exit( -1 );
		}
	}
}

void dbg_error( const char *err ){

#if TARGET_OS_IPHONE
	dbg_throw( err );
#endif

	for(;;){
		bbPrint( String("Monkey Runtime Error : ")+err );
		bbPrint( dbg_stacktrace() );
		dbg_stop();
	}
}

#define DBG_INFO(X) dbg_info=(X);if( dbg_suspend>0 ) dbg_stop();

#define DBG_ENTER(P) dbg_func _dbg_func(P);

#define DBG_BLOCK() dbg_blk _dbg_blk;

#define DBG_GLOBAL( ID,NAME )	//TODO!

#define DBG_LOCAL( ID,NAME )\
*dbg_var_ptr++=&ID;\
*dbg_var_ptr++=(void*)NAME;\
*dbg_var_ptr++=&dbg_var_type_t<dbg_typeof(ID)>::info;

//**** main ****

int argc;
const char **argv;

Float D2R=0.017453292519943295f;
Float R2D=57.29577951308232f;

int bbPrint( String t ){

	static std::vector<unsigned char> buf;
	buf.clear();
	t.Save( buf );
	buf.push_back( '\n' );
	buf.push_back( 0 );
	
#if __cplusplus_winrt	//winrt?

#if CFG_WINRT_PRINT_ENABLED
	OutputDebugStringA( (const char*)&buf[0] );
#endif

#elif _WIN32			//windows?

	fputs( (const char*)&buf[0],stdout );
	fflush( stdout );

#elif __APPLE__			//macos/ios?

	fputs( (const char*)&buf[0],stdout );
	fflush( stdout );
	
#elif __linux			//linux?

#if CFG_ANDROID_NDK_PRINT_ENABLED
	LOGI( (const char*)&buf[0] );
#else
	fputs( (const char*)&buf[0],stdout );
	fflush( stdout );
#endif

#endif

	return 0;
}

class BBExitApp{
};

int bbError( String err ){
	if( !err.Length() ){
#if __cplusplus_winrt
		throw BBExitApp();
#else
		exit( 0 );
#endif
	}
	dbg_error( err.ToCString<char>() );
	return 0;
}

int bbDebugLog( String t ){
	bbPrint( t );
	return 0;
}

int bbDebugStop(){
	dbg_stop();
	return 0;
}

int bbInit();
int bbMain();

#if _MSC_VER

static void _cdecl seTranslator( unsigned int ex,EXCEPTION_POINTERS *p ){

	switch( ex ){
	case EXCEPTION_ACCESS_VIOLATION:dbg_error( "Memory access violation" );
	case EXCEPTION_ILLEGAL_INSTRUCTION:dbg_error( "Illegal instruction" );
	case EXCEPTION_INT_DIVIDE_BY_ZERO:dbg_error( "Integer divide by zero" );
	case EXCEPTION_STACK_OVERFLOW:dbg_error( "Stack overflow" );
	}
	dbg_error( "Unknown exception" );
}

#else

void sighandler( int sig  ){
	switch( sig ){
	case SIGSEGV:dbg_error( "Memory access violation" );
	case SIGILL:dbg_error( "Illegal instruction" );
	case SIGFPE:dbg_error( "Floating point exception" );
#if !_WIN32
	case SIGBUS:dbg_error( "Bus error" );
#endif	
	}
	dbg_error( "Unknown signal" );
}

#endif

//entry point call by target main()...
//
int bb_std_main( int argc,const char **argv ){

	::argc=argc;
	::argv=argv;
	
#if _MSC_VER

	_set_se_translator( seTranslator );

#else
	
	signal( SIGSEGV,sighandler );
	signal( SIGILL,sighandler );
	signal( SIGFPE,sighandler );
#if !_WIN32
	signal( SIGBUS,sighandler );
#endif

#endif

	if( !setlocale( LC_CTYPE,"en_US.UTF-8" ) ){
		setlocale( LC_CTYPE,"" );
	}

	gc_init1();

	bbInit();
	
	gc_init2();

	bbMain();

	return 0;
}


//***** game.h *****

struct BBGameEvent{
	enum{
		None=0,
		KeyDown=1,KeyUp=2,KeyChar=3,
		MouseDown=4,MouseUp=5,MouseMove=6,
		TouchDown=7,TouchUp=8,TouchMove=9,
		MotionAccel=10
	};
};

class BBGameDelegate : public Object{
public:
	virtual void StartGame(){}
	virtual void SuspendGame(){}
	virtual void ResumeGame(){}
	virtual void UpdateGame(){}
	virtual void RenderGame(){}
	virtual void KeyEvent( int event,int data ){}
	virtual void MouseEvent( int event,int data,Float x,Float y ){}
	virtual void TouchEvent( int event,int data,Float x,Float y ){}
	virtual void MotionEvent( int event,int data,Float x,Float y,Float z ){}
	virtual void DiscardGraphics(){}
};

struct BBDisplayMode : public Object{
	int width;
	int height;
	int depth;
	int hertz;
	int flags;
	BBDisplayMode( int width=0,int height=0,int depth=0,int hertz=0,int flags=0 ):width(width),height(height),depth(depth),hertz(hertz),flags(flags){}
};

class BBGame{
public:
	BBGame();
	virtual ~BBGame(){}
	
	// ***** Extern *****
	static BBGame *Game(){ return _game; }
	
	virtual void SetDelegate( BBGameDelegate *delegate );
	virtual BBGameDelegate *Delegate(){ return _delegate; }
	
	virtual void SetKeyboardEnabled( bool enabled );
	virtual bool KeyboardEnabled();
	
	virtual void SetUpdateRate( int updateRate );
	virtual int UpdateRate();
	
	virtual bool Started(){ return _started; }
	virtual bool Suspended(){ return _suspended; }
	
	virtual int Millisecs();
	virtual void GetDate( Array<int> date );
	virtual int SaveState( String state );
	virtual String LoadState();
	virtual String LoadString( String path );
	virtual bool PollJoystick( int port,Array<Float> joyx,Array<Float> joyy,Array<Float> joyz,Array<bool> buttons );
	virtual void OpenUrl( String url );
	virtual void SetMouseVisible( bool visible );
	
	virtual int GetDeviceWidth(){ return 0; }
	virtual int GetDeviceHeight(){ return 0; }
	virtual void SetDeviceWindow( int width,int height,int flags ){}
	virtual Array<BBDisplayMode*> GetDisplayModes(){ return Array<BBDisplayMode*>(); }
	virtual BBDisplayMode *GetDesktopMode(){ return 0; }
	virtual void SetSwapInterval( int interval ){}

	// ***** Native *****
	virtual String PathToFilePath( String path );
	virtual FILE *OpenFile( String path,String mode );
	virtual unsigned char *LoadData( String path,int *plength );
	virtual unsigned char *LoadImageData( String path,int *width,int *height,int *depth ){ return 0; }
	virtual unsigned char *LoadAudioData( String path,int *length,int *channels,int *format,int *hertz ){ return 0; }
	
	//***** Internal *****
	virtual void Die( ThrowableObject *ex );
	virtual void gc_collect();
	virtual void StartGame();
	virtual void SuspendGame();
	virtual void ResumeGame();
	virtual void UpdateGame();
	virtual void RenderGame();
	virtual void KeyEvent( int ev,int data );
	virtual void MouseEvent( int ev,int data,float x,float y );
	virtual void TouchEvent( int ev,int data,float x,float y );
	virtual void MotionEvent( int ev,int data,float x,float y,float z );
	virtual void DiscardGraphics();
	
protected:

	static BBGame *_game;

	BBGameDelegate *_delegate;
	bool _keyboardEnabled;
	int _updateRate;
	bool _started;
	bool _suspended;
};

//***** game.cpp *****

BBGame *BBGame::_game;

BBGame::BBGame():
_delegate( 0 ),
_keyboardEnabled( false ),
_updateRate( 0 ),
_started( false ),
_suspended( false ){
	_game=this;
}

void BBGame::SetDelegate( BBGameDelegate *delegate ){
	_delegate=delegate;
}

void BBGame::SetKeyboardEnabled( bool enabled ){
	_keyboardEnabled=enabled;
}

bool BBGame::KeyboardEnabled(){
	return _keyboardEnabled;
}

void BBGame::SetUpdateRate( int updateRate ){
	_updateRate=updateRate;
}

int BBGame::UpdateRate(){
	return _updateRate;
}

int BBGame::Millisecs(){
	return 0;
}

void BBGame::GetDate( Array<int> date ){
	int n=date.Length();
	if( n>0 ){
		time_t t=time( 0 );
		
#if _MSC_VER
		struct tm tii;
		struct tm *ti=&tii;
		localtime_s( ti,&t );
#else
		struct tm *ti=localtime( &t );
#endif

		date[0]=ti->tm_year+1900;
		if( n>1 ){ 
			date[1]=ti->tm_mon+1;
			if( n>2 ){
				date[2]=ti->tm_mday;
				if( n>3 ){
					date[3]=ti->tm_hour;
					if( n>4 ){
						date[4]=ti->tm_min;
						if( n>5 ){
							date[5]=ti->tm_sec;
							if( n>6 ){
								date[6]=0;
							}
						}
					}
				}
			}
		}
	}
}

int BBGame::SaveState( String state ){
	if( FILE *f=OpenFile( "./.monkeystate","wb" ) ){
		bool ok=state.Save( f );
		fclose( f );
		return ok ? 0 : -2;
	}
	return -1;
}

String BBGame::LoadState(){
	if( FILE *f=OpenFile( "./.monkeystate","rb" ) ){
		String str=String::Load( f );
		fclose( f );
		return str;
	}
	return "";
}

String BBGame::LoadString( String path ){
	if( FILE *fp=OpenFile( path,"rb" ) ){
		String str=String::Load( fp );
		fclose( fp );
		return str;
	}
	return "";
}

bool BBGame::PollJoystick( int port,Array<Float> joyx,Array<Float> joyy,Array<Float> joyz,Array<bool> buttons ){
	return false;
}

void BBGame::OpenUrl( String url ){
}

void BBGame::SetMouseVisible( bool visible ){
}

//***** C++ Game *****

String BBGame::PathToFilePath( String path ){
	return path;
}

FILE *BBGame::OpenFile( String path,String mode ){
	path=PathToFilePath( path );
	if( path=="" ) return 0;
	
#if __cplusplus_winrt
	path=path.Replace( "/","\\" );
	FILE *f;
	if( _wfopen_s( &f,path.ToCString<wchar_t>(),mode.ToCString<wchar_t>() ) ) return 0;
	return f;
#elif _WIN32
	return _wfopen( path.ToCString<wchar_t>(),mode.ToCString<wchar_t>() );
#else
	return fopen( path.ToCString<char>(),mode.ToCString<char>() );
#endif
}

unsigned char *BBGame::LoadData( String path,int *plength ){

	FILE *f=OpenFile( path,"rb" );
	if( !f ) return 0;

	const int BUF_SZ=4096;
	std::vector<void*> tmps;
	int length=0;
	
	for(;;){
		void *p=malloc( BUF_SZ );
		int n=fread( p,1,BUF_SZ,f );
		tmps.push_back( p );
		length+=n;
		if( n!=BUF_SZ ) break;
	}
	fclose( f );
	
	unsigned char *data=(unsigned char*)malloc( length );
	unsigned char *p=data;
	
	int sz=length;
	for( int i=0;i<tmps.size();++i ){
		int n=sz>BUF_SZ ? BUF_SZ : sz;
		memcpy( p,tmps[i],n );
		free( tmps[i] );
		sz-=n;
		p+=n;
	}
	
	*plength=length;
	
	gc_ext_malloced( length );
	
	return data;
}

//***** INTERNAL *****

void BBGame::Die( ThrowableObject *ex ){
	bbPrint( "Monkey Runtime Error : Uncaught Monkey Exception" );
#ifndef NDEBUG
	bbPrint( ex->stackTrace );
#endif
	exit( -1 );
}

void BBGame::gc_collect(){
	gc_mark( _delegate );
	::gc_collect();
}

void BBGame::StartGame(){

	if( _started ) return;
	_started=true;
	
	try{
		_delegate->StartGame();
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::SuspendGame(){

	if( !_started || _suspended ) return;
	_suspended=true;
	
	try{
		_delegate->SuspendGame();
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::ResumeGame(){

	if( !_started || !_suspended ) return;
	_suspended=false;
	
	try{
		_delegate->ResumeGame();
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::UpdateGame(){

	if( !_started || _suspended ) return;
	
	try{
		_delegate->UpdateGame();
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::RenderGame(){

	if( !_started ) return;
	
	try{
		_delegate->RenderGame();
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::KeyEvent( int ev,int data ){

	if( !_started ) return;
	
	try{
		_delegate->KeyEvent( ev,data );
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::MouseEvent( int ev,int data,float x,float y ){

	if( !_started ) return;
	
	try{
		_delegate->MouseEvent( ev,data,x,y );
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::TouchEvent( int ev,int data,float x,float y ){

	if( !_started ) return;
	
	try{
		_delegate->TouchEvent( ev,data,x,y );
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::MotionEvent( int ev,int data,float x,float y,float z ){

	if( !_started ) return;
	
	try{
		_delegate->MotionEvent( ev,data,x,y,z );
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}

void BBGame::DiscardGraphics(){

	if( !_started ) return;
	
	try{
		_delegate->DiscardGraphics();
	}catch( ThrowableObject *ex ){
		Die( ex );
	}
	gc_collect();
}


//***** wavloader.h *****
//
unsigned char *LoadWAV( FILE *f,int *length,int *channels,int *format,int *hertz );

//***** wavloader.cpp *****
//
static const char *readTag( FILE *f ){
	static char buf[8];
	if( fread( buf,4,1,f )!=1 ) return "";
	buf[4]=0;
	return buf;
}

static int readInt( FILE *f ){
	unsigned char buf[4];
	if( fread( buf,4,1,f )!=1 ) return -1;
	return (buf[3]<<24) | (buf[2]<<16) | (buf[1]<<8) | buf[0];
}

static int readShort( FILE *f ){
	unsigned char buf[2];
	if( fread( buf,2,1,f )!=1 ) return -1;
	return (buf[1]<<8) | buf[0];
}

static void skipBytes( int n,FILE *f ){
	char *p=(char*)malloc( n );
	fread( p,n,1,f );
	free(p);
}

unsigned char *LoadWAV( FILE *f,int *plength,int *pchannels,int *pformat,int *phertz ){
	if( !strcmp( readTag( f ),"RIFF" ) ){
		int len=readInt( f )-8;len=len;
		if( !strcmp( readTag( f ),"WAVE" ) ){
			if( !strcmp( readTag( f ),"fmt " ) ){
				int len2=readInt( f );
				int comp=readShort( f );
				if( comp==1 ){
					int chans=readShort( f );
					int hertz=readInt( f );
					int bytespersec=readInt( f );bytespersec=bytespersec;
					int pad=readShort( f );pad=pad;
					int bits=readShort( f );
					int format=bits/8;
					if( len2>16 ) skipBytes( len2-16,f );
					for(;;){
						const char *p=readTag( f );
						if( feof( f ) ) break;
						int size=readInt( f );
						if( strcmp( p,"data" ) ){
							skipBytes( size,f );
							continue;
						}
						unsigned char *data=(unsigned char*)malloc( size );
						if( fread( data,size,1,f )==1 ){
							*plength=size/(chans*format);
							*pchannels=chans;
							*pformat=format;
							*phertz=hertz;
							return data;
						}
						free( data );
					}
				}
			}
		}
	}
	return 0;
}



//***** oggloader.h *****
unsigned char *LoadOGG( FILE *f,int *length,int *channels,int *format,int *hertz );

//***** oggloader.cpp *****
unsigned char *LoadOGG( FILE *f,int *length,int *channels,int *format,int *hertz ){

	int error;
	stb_vorbis *v=stb_vorbis_open_file( f,0,&error,0 );
	if( !v ) return 0;
	
	stb_vorbis_info info=stb_vorbis_get_info( v );
	
	int limit=info.channels*4096;
	int offset=0,data_len=0,total=limit;

	short *data=(short*)malloc( total*sizeof(short) );
	
	for(;;){
		int n=stb_vorbis_get_frame_short_interleaved( v,info.channels,data+offset,total-offset );
		if( !n ) break;
	
		data_len+=n;
		offset+=n*info.channels;
		
		if( offset+limit>total ){
			total*=2;
			data=(short*)realloc( data,total*sizeof(short) );
		}
	}
	
	*length=data_len;
	*channels=info.channels;
	*format=2;
	*hertz=info.sample_rate;
	
	stb_vorbis_close(v);

	return (unsigned char*)data;
}



//***** glfwgame.h *****

class BBGlfwGame : public BBGame{
public:
	BBGlfwGame();
	
	static BBGlfwGame *GlfwGame(){ return _glfwGame; }
	
	virtual void SetUpdateRate( int hertz );
	virtual int Millisecs();
	virtual bool PollJoystick( int port,Array<Float> joyx,Array<Float> joyy,Array<Float> joyz,Array<bool> buttons );
	virtual void OpenUrl( String url );
	virtual void SetMouseVisible( bool visible );
		
	virtual int GetDeviceWidth(){ return _width; }
	virtual int GetDeviceHeight(){ return _height; }
	virtual void SetDeviceWindow( int width,int height,int flags );
	virtual void SetSwapInterval( int interval );
	virtual Array<BBDisplayMode*> GetDisplayModes();
	virtual BBDisplayMode *GetDesktopMode();

	virtual String PathToFilePath( String path );
	virtual unsigned char *LoadImageData( String path,int *width,int *height,int *format );
	virtual unsigned char *LoadAudioData( String path,int *length,int *channels,int *format,int *hertz );
	
	void Run();
	
	GLFWwindow *GetGLFWwindow(){ return _window; }
		
private:
	static BBGlfwGame *_glfwGame;
	
	GLFWvidmode _desktopMode;
	
	GLFWwindow *_window;
	int _width;
	int _height;
	int _swapInterval;
	bool _focus;

	double _updatePeriod;
	double _nextUpdate;
	
	double GetTime();
	void Sleep( double time );
	void UpdateEvents();

//	void SetGlfwWindow( int width,int height,int red,int green,int blue,int alpha,int depth,int stencil,bool fullscreen );
		
	static int TransKey( int key );
	static int KeyToChar( int key );
	
	static void OnKey( GLFWwindow *window,int key,int scancode,int action,int mods );
	static void OnChar( GLFWwindow *window,unsigned int chr );
	static void OnMouseButton( GLFWwindow *window,int button,int action,int mods );
	static void OnCursorPos( GLFWwindow *window,double x,double y );
	static void OnWindowClose( GLFWwindow *window );
	static void OnWindowSize( GLFWwindow *window,int width,int height );
};

//***** glfwgame.cpp *****

#include <errno.h>

#define _QUOTE(X) #X
#define _STRINGIZE( X ) _QUOTE(X)

enum{
	VKEY_BACKSPACE=8,VKEY_TAB,
	VKEY_ENTER=13,
	VKEY_SHIFT=16,
	VKEY_CONTROL=17,
	VKEY_ESCAPE=27,
	VKEY_SPACE=32,
	VKEY_PAGE_UP=33,VKEY_PAGE_DOWN,VKEY_END,VKEY_HOME,
	VKEY_LEFT=37,VKEY_UP,VKEY_RIGHT,VKEY_DOWN,
	VKEY_INSERT=45,VKEY_DELETE,
	VKEY_0=48,VKEY_1,VKEY_2,VKEY_3,VKEY_4,VKEY_5,VKEY_6,VKEY_7,VKEY_8,VKEY_9,
	VKEY_A=65,VKEY_B,VKEY_C,VKEY_D,VKEY_E,VKEY_F,VKEY_G,VKEY_H,VKEY_I,VKEY_J,
	VKEY_K,VKEY_L,VKEY_M,VKEY_N,VKEY_O,VKEY_P,VKEY_Q,VKEY_R,VKEY_S,VKEY_T,
	VKEY_U,VKEY_V,VKEY_W,VKEY_X,VKEY_Y,VKEY_Z,
	
	VKEY_LSYS=91,VKEY_RSYS,
	
	VKEY_NUM0=96,VKEY_NUM1,VKEY_NUM2,VKEY_NUM3,VKEY_NUM4,
	VKEY_NUM5,VKEY_NUM6,VKEY_NUM7,VKEY_NUM8,VKEY_NUM9,
	VKEY_NUMMULTIPLY=106,VKEY_NUMADD,VKEY_NUMSLASH,
	VKEY_NUMSUBTRACT,VKEY_NUMDECIMAL,VKEY_NUMDIVIDE,

	VKEY_F1=112,VKEY_F2,VKEY_F3,VKEY_F4,VKEY_F5,VKEY_F6,
	VKEY_F7,VKEY_F8,VKEY_F9,VKEY_F10,VKEY_F11,VKEY_F12,

	VKEY_LEFT_SHIFT=160,VKEY_RIGHT_SHIFT,
	VKEY_LEFT_CONTROL=162,VKEY_RIGHT_CONTROL,
	VKEY_LEFT_ALT=164,VKEY_RIGHT_ALT,

	VKEY_TILDE=192,VKEY_MINUS=189,VKEY_EQUALS=187,
	VKEY_OPENBRACKET=219,VKEY_BACKSLASH=220,VKEY_CLOSEBRACKET=221,
	VKEY_SEMICOLON=186,VKEY_QUOTES=222,
	VKEY_COMMA=188,VKEY_PERIOD=190,VKEY_SLASH=191
};

void Init_GL_Exts();

int glfwGraphicsSeq=0;

BBGlfwGame *BBGlfwGame::_glfwGame;

BBGlfwGame::BBGlfwGame():_window(0),_width(0),_height(0),_swapInterval(1),_focus(true),_updatePeriod(0),_nextUpdate(0){
	_glfwGame=this;

	memset( &_desktopMode,0,sizeof(_desktopMode) );	
	const GLFWvidmode *vmode=glfwGetVideoMode( glfwGetPrimaryMonitor() );
	if( vmode ) _desktopMode=*vmode;
}

void BBGlfwGame::SetUpdateRate( int updateRate ){
	BBGame::SetUpdateRate( updateRate );
	if( _updateRate ) _updatePeriod=1.0/_updateRate;
	_nextUpdate=0;
}

int BBGlfwGame::Millisecs(){
	return int( GetTime()*1000.0 );
}

bool BBGlfwGame::PollJoystick( int port,Array<Float> joyx,Array<Float> joyy,Array<Float> joyz,Array<bool> buttons ){

	static int pjoys[4];
	if( !port ){
		int i=0;
		for( int joy=0;joy<16 && i<4;++joy ){
			if( glfwJoystickPresent( joy ) ) pjoys[i++]=joy;
		}
		while( i<4 ) pjoys[i++]=-1;
	}
	port=pjoys[port];
	if( port==-1 ) return false;
	
	//read axes
	int n_axes=0;
	const float *axes=glfwGetJoystickAxes( port,&n_axes );
	
	//read buttons
	int n_buts=0;
	const unsigned char *buts=glfwGetJoystickButtons( port,&n_buts );

	//Ugh...
	
	const int *dev_axes;
	const int *dev_buttons;
	
#if _WIN32
	
	//xbox 360 controller
	const int xbox360_axes[]={0,0x41,2,4,0x43,0x42,999};
	const int xbox360_buttons[]={0,1,2,3,4,5,6,7,13,10,11,12,8,9,999};
	
	//logitech dual action
	const int logitech_axes[]={0,1,0x86,2,0x43,0x87,999};
	const int logitech_buttons[]={1,2,0,3,4,5,8,9,15,12,13,14,10,11,999};
	
	if( n_axes==5 && n_buts==14 ){
		dev_axes=xbox360_axes;
		dev_buttons=xbox360_buttons;
	}else{
		dev_axes=logitech_axes;
		dev_buttons=logitech_buttons;
	}
	
#else

	//xbox 360 controller
	const int xbox360_axes[]={0,0x41,0x14,2,0x43,0x15,999};
	const int xbox360_buttons[]={11,12,13,14,8,9,5,4,2,0,3,1,6,7,10,999};

	//ps3 controller
	const int ps3_axes[]={0,0x41,0x88,2,0x43,0x89,999};
	const int ps3_buttons[]={14,13,15,12,10,11,0,3,7,4,5,6,1,2,16,999};

	//logitech dual action
	const int logitech_axes[]={0,0x41,0x86,2,0x43,0x87,999};
	const int logitech_buttons[]={1,2,0,3,4,5,8,9,15,12,13,14,10,11,999};

	if( n_axes==6 && n_buts==15 ){
		dev_axes=xbox360_axes;
		dev_buttons=xbox360_buttons;
	}else if( n_axes==4 && n_buts==19 ){
		dev_axes=ps3_axes;
		dev_buttons=ps3_buttons;
	}else{
		dev_axes=logitech_axes;
		dev_buttons=logitech_buttons;
	}

#endif

	const int *p=dev_axes;
	
	float joys[6]={0,0,0,0,0,0};
	
	for( int i=0;i<6 && p[i]!=999;++i ){
		int j=p[i]&0xf,k=p[i]&~0xf;
		if( k==0x10 ){
			joys[i]=(axes[j]+1)/2;
		}else if( k==0x20 ){
			joys[i]=(1-axes[j])/2;
		}else if( k==0x40 ){
			joys[i]=-axes[j];
		}else if( k==0x80 ){
			joys[i]=(buts[j]==GLFW_PRESS);
		}else{
			joys[i]=axes[j];
		}
	}
	
	joyx[0]=joys[0];joyy[0]=joys[1];joyz[0]=joys[2];
	joyx[1]=joys[3];joyy[1]=joys[4];joyz[1]=joys[5];
	
	p=dev_buttons;
	
	for( int i=0;i<32;++i ) buttons[i]=false;
	
	for( int i=0;i<32 && p[i]!=999;++i ){
		int j=p[i];
		if( j<0 ) j+=n_buts;
		buttons[i]=(buts[j]==GLFW_PRESS);
	}

	return true;
}

void BBGlfwGame::OpenUrl( String url ){
#if _WIN32
	ShellExecute( HWND_DESKTOP,"open",url.ToCString<char>(),0,0,SW_SHOWNORMAL );
#elif __APPLE__
	if( CFURLRef cfurl=CFURLCreateWithBytes( 0,url.ToCString<UInt8>(),url.Length(),kCFStringEncodingASCII,0 ) ){
		LSOpenCFURLRef( cfurl,0 );
		CFRelease( cfurl );
	}
#elif __linux
	system( ( String( "xdg-open \"" )+url+"\"" ).ToCString<char>() );
#endif
}

void BBGlfwGame::SetMouseVisible( bool visible ){
	if( visible ){
		glfwSetInputMode( _window,GLFW_CURSOR,GLFW_CURSOR_NORMAL );
	}else{
		glfwSetInputMode( _window,GLFW_CURSOR,GLFW_CURSOR_HIDDEN );
	}
}

String BBGlfwGame::PathToFilePath( String path ){
	if( !path.StartsWith( "monkey:" ) ){
		return path;
	}else if( path.StartsWith( "monkey://data/" ) ){
		return String("./data/")+path.Slice( 14 );
	}else if( path.StartsWith( "monkey://internal/" ) ){
		return String("./internal/")+path.Slice( 18 );
	}else if( path.StartsWith( "monkey://external/" ) ){
		return String("./external/")+path.Slice( 18 );
	}
	return "";
}

unsigned char *BBGlfwGame::LoadImageData( String path,int *width,int *height,int *depth ){

	FILE *f=OpenFile( path,"rb" );
	if( !f ) return 0;
	
	unsigned char *data=stbi_load_from_file( f,width,height,depth,0 );
	fclose( f );
	
	if( data ) gc_ext_malloced( (*width)*(*height)*(*depth) );
	
	return data;
}

/*
extern "C" unsigned char *load_image_png( FILE *f,int *width,int *height,int *format );
extern "C" unsigned char *load_image_jpg( FILE *f,int *width,int *height,int *format );

unsigned char *BBGlfwGame::LoadImageData( String path,int *width,int *height,int *depth ){

	FILE *f=OpenFile( path,"rb" );
	if( !f ) return 0;

	unsigned char *data=0;
	
	if( path.ToLower().EndsWith( ".png" ) ){
		data=load_image_png( f,width,height,depth );
	}else if( path.ToLower().EndsWith( ".jpg" ) || path.ToLower().EndsWith( ".jpeg" ) ){
		data=load_image_jpg( f,width,height,depth );
	}else{
		//meh?
	}

	fclose( f );
	
	if( data ) gc_ext_malloced( (*width)*(*height)*(*depth) );
	
	return data;
}
*/

unsigned char *BBGlfwGame::LoadAudioData( String path,int *length,int *channels,int *format,int *hertz ){

	FILE *f=OpenFile( path,"rb" );
	if( !f ) return 0;
	
	unsigned char *data=0;
	
	if( path.ToLower().EndsWith( ".wav" ) ){
		data=LoadWAV( f,length,channels,format,hertz );
	}else if( path.ToLower().EndsWith( ".ogg" ) ){
		data=LoadOGG( f,length,channels,format,hertz );
	}
	fclose( f );
	
	if( data ) gc_ext_malloced( (*length)*(*channels)*(*format) );
	
	return data;
}

//glfw key to monkey key!
int BBGlfwGame::TransKey( int key ){

	if( key>='0' && key<='9' ) return key;
	if( key>='A' && key<='Z' ) return key;

	switch( key ){
	case ' ':return VKEY_SPACE;
	case ';':return VKEY_SEMICOLON;
	case '=':return VKEY_EQUALS;
	case ',':return VKEY_COMMA;
	case '-':return VKEY_MINUS;
	case '.':return VKEY_PERIOD;
	case '/':return VKEY_SLASH;
	case '~':return VKEY_TILDE;
	case '[':return VKEY_OPENBRACKET;
	case ']':return VKEY_CLOSEBRACKET;
	case '\"':return VKEY_QUOTES;
	case '\\':return VKEY_BACKSLASH;
	
	case '`':return VKEY_TILDE;
	case '\'':return VKEY_QUOTES;

	case GLFW_KEY_LEFT_SHIFT:
	case GLFW_KEY_RIGHT_SHIFT:return VKEY_SHIFT;
	case GLFW_KEY_LEFT_CONTROL:
	case GLFW_KEY_RIGHT_CONTROL:return VKEY_CONTROL;
	
//	case GLFW_KEY_LEFT_SHIFT:return VKEY_LEFT_SHIFT;
//	case GLFW_KEY_RIGHT_SHIFT:return VKEY_RIGHT_SHIFT;
//	case GLFW_KEY_LCTRL:return VKEY_LCONTROL;
//	case GLFW_KEY_RCTRL:return VKEY_RCONTROL;
	
	case GLFW_KEY_BACKSPACE:return VKEY_BACKSPACE;
	case GLFW_KEY_TAB:return VKEY_TAB;
	case GLFW_KEY_ENTER:return VKEY_ENTER;
	case GLFW_KEY_ESCAPE:return VKEY_ESCAPE;
	case GLFW_KEY_INSERT:return VKEY_INSERT;
	case GLFW_KEY_DELETE:return VKEY_DELETE;
	case GLFW_KEY_PAGE_UP:return VKEY_PAGE_UP;
	case GLFW_KEY_PAGE_DOWN:return VKEY_PAGE_DOWN;
	case GLFW_KEY_HOME:return VKEY_HOME;
	case GLFW_KEY_END:return VKEY_END;
	case GLFW_KEY_UP:return VKEY_UP;
	case GLFW_KEY_DOWN:return VKEY_DOWN;
	case GLFW_KEY_LEFT:return VKEY_LEFT;
	case GLFW_KEY_RIGHT:return VKEY_RIGHT;
	
	case GLFW_KEY_KP_0:return VKEY_NUM0;
	case GLFW_KEY_KP_1:return VKEY_NUM1;
	case GLFW_KEY_KP_2:return VKEY_NUM2;
	case GLFW_KEY_KP_3:return VKEY_NUM3;
	case GLFW_KEY_KP_4:return VKEY_NUM4;
	case GLFW_KEY_KP_5:return VKEY_NUM5;
	case GLFW_KEY_KP_6:return VKEY_NUM6;
	case GLFW_KEY_KP_7:return VKEY_NUM7;
	case GLFW_KEY_KP_8:return VKEY_NUM8;
	case GLFW_KEY_KP_9:return VKEY_NUM9;
	case GLFW_KEY_KP_DIVIDE:return VKEY_NUMDIVIDE;
	case GLFW_KEY_KP_MULTIPLY:return VKEY_NUMMULTIPLY;
	case GLFW_KEY_KP_SUBTRACT:return VKEY_NUMSUBTRACT;
	case GLFW_KEY_KP_ADD:return VKEY_NUMADD;
	case GLFW_KEY_KP_DECIMAL:return VKEY_NUMDECIMAL;
	
	case GLFW_KEY_F1:return VKEY_F1;
	case GLFW_KEY_F2:return VKEY_F2;
	case GLFW_KEY_F3:return VKEY_F3;
	case GLFW_KEY_F4:return VKEY_F4;
	case GLFW_KEY_F5:return VKEY_F5;
	case GLFW_KEY_F6:return VKEY_F6;
	case GLFW_KEY_F7:return VKEY_F7;
	case GLFW_KEY_F8:return VKEY_F8;
	case GLFW_KEY_F9:return VKEY_F9;
	case GLFW_KEY_F10:return VKEY_F10;
	case GLFW_KEY_F11:return VKEY_F11;
	case GLFW_KEY_F12:return VKEY_F12;
	}
	return 0;
}

//monkey key to special monkey char
int BBGlfwGame::KeyToChar( int key ){
	switch( key ){
	case VKEY_BACKSPACE:
	case VKEY_TAB:
	case VKEY_ENTER:
	case VKEY_ESCAPE:
		return key;
	case VKEY_PAGE_UP:
	case VKEY_PAGE_DOWN:
	case VKEY_END:
	case VKEY_HOME:
	case VKEY_LEFT:
	case VKEY_UP:
	case VKEY_RIGHT:
	case VKEY_DOWN:
	case VKEY_INSERT:
		return key | 0x10000;
	case VKEY_DELETE:
		return 127;
	}
	return 0;
}

void BBGlfwGame::OnKey( GLFWwindow *window,int key,int scancode,int action,int mods ){

	key=TransKey( key );
	if( !key ) return;
	
	switch( action ){
	case GLFW_PRESS:
	case GLFW_REPEAT:
		_glfwGame->KeyEvent( BBGameEvent::KeyDown,key );
		if( int chr=KeyToChar( key ) ) _glfwGame->KeyEvent( BBGameEvent::KeyChar,chr );
		break;
	case GLFW_RELEASE:
		_glfwGame->KeyEvent( BBGameEvent::KeyUp,key );
		break;
	}
}

void BBGlfwGame::OnChar( GLFWwindow *window,unsigned int chr ){

	_glfwGame->KeyEvent( BBGameEvent::KeyChar,chr );
}

void BBGlfwGame::OnMouseButton( GLFWwindow *window,int button,int action,int mods ){
	switch( button ){
	case GLFW_MOUSE_BUTTON_LEFT:button=0;break;
	case GLFW_MOUSE_BUTTON_RIGHT:button=1;break;
	case GLFW_MOUSE_BUTTON_MIDDLE:button=2;break;
	default:return;
	}
	double x=0,y=0;
	glfwGetCursorPos( window,&x,&y );
	switch( action ){
	case GLFW_PRESS:
		_glfwGame->MouseEvent( BBGameEvent::MouseDown,button,x,y );
		break;
	case GLFW_RELEASE:
		_glfwGame->MouseEvent( BBGameEvent::MouseUp,button,x,y );
		break;
	}
}

void BBGlfwGame::OnCursorPos( GLFWwindow *window,double x,double y ){
	_glfwGame->MouseEvent( BBGameEvent::MouseMove,-1,x,y );
}

void BBGlfwGame::OnWindowClose( GLFWwindow *window ){
	_glfwGame->KeyEvent( BBGameEvent::KeyDown,0x1b0 );
	_glfwGame->KeyEvent( BBGameEvent::KeyUp,0x1b0 );
}

void BBGlfwGame::OnWindowSize( GLFWwindow *window,int width,int height ){

	_glfwGame->_width=width;
	_glfwGame->_height=height;
	
#if CFG_GLFW_WINDOW_RENDER_WHILE_RESIZING && !__linux
	_glfwGame->RenderGame();
	glfwSwapBuffers( _glfwGame->_window );
	_glfwGame->_nextUpdate=0;
#endif
}

void BBGlfwGame::SetDeviceWindow( int width,int height,int flags ){

	_focus=false;

	if( _window ){
		for( int i=0;i<=GLFW_KEY_LAST;++i ){
			int key=TransKey( i );
			if( key && glfwGetKey( _window,i )==GLFW_PRESS ) KeyEvent( BBGameEvent::KeyUp,key );
		}
		glfwDestroyWindow( _window );
		_window=0;
	}

	bool fullscreen=(flags & 1);
	bool resizable=(flags & 2);
	bool decorated=(flags & 4);
	bool floating=(flags & 8);
	bool depthbuffer=(flags & 16);
	bool doublebuffer=!(flags & 32);
	bool secondmonitor=(flags & 64);

	glfwWindowHint( GLFW_RED_BITS,8 );
	glfwWindowHint( GLFW_GREEN_BITS,8 );
	glfwWindowHint( GLFW_BLUE_BITS,8 );
	glfwWindowHint( GLFW_ALPHA_BITS,0 );
	glfwWindowHint( GLFW_DEPTH_BITS,depthbuffer ? 32 : 0 );
	glfwWindowHint( GLFW_STENCIL_BITS,0 );
	glfwWindowHint( GLFW_RESIZABLE,resizable );
	glfwWindowHint( GLFW_DECORATED,decorated );
	glfwWindowHint( GLFW_FLOATING,floating );
	glfwWindowHint( GLFW_VISIBLE,fullscreen );
	glfwWindowHint( GLFW_DOUBLEBUFFER,doublebuffer );
	glfwWindowHint( GLFW_SAMPLES,CFG_GLFW_WINDOW_SAMPLES );
	glfwWindowHint( GLFW_REFRESH_RATE,60 );
	
	GLFWmonitor *monitor=0;
	if( fullscreen ){
		int monitorid=secondmonitor ? 1 : 0;
		int count=0;
		GLFWmonitor **monitors=glfwGetMonitors( &count );
		if( monitorid>=count ) monitorid=count-1;
		monitor=monitors[monitorid];
	}
	
	_window=glfwCreateWindow( width,height,_STRINGIZE(CFG_GLFW_WINDOW_TITLE),monitor,0 );
	if( !_window ){
		bbPrint( "glfwCreateWindow FAILED!" );
		abort();
	}
	
	_width=width;
	_height=height;
	
	++glfwGraphicsSeq;

	if( !fullscreen ){	
		glfwSetWindowPos( _window,(_desktopMode.width-width)/2,(_desktopMode.height-height)/2 );
		glfwShowWindow( _window );
	}
	
	glfwMakeContextCurrent( _window );
	
	if( _swapInterval>=0 ) glfwSwapInterval( _swapInterval );

#if CFG_OPENGL_INIT_EXTENSIONS
	Init_GL_Exts();
#endif

	glfwSetKeyCallback( _window,OnKey );
	glfwSetCharCallback( _window,OnChar );
	glfwSetMouseButtonCallback( _window,OnMouseButton );
	glfwSetCursorPosCallback( _window,OnCursorPos );
	glfwSetWindowCloseCallback(	_window,OnWindowClose );
	glfwSetWindowSizeCallback(_window,OnWindowSize );
}

void BBGlfwGame::SetSwapInterval( int interval ){

	_swapInterval=interval;
	
	if( _swapInterval>=0 && _window ) glfwSwapInterval( _swapInterval );
}

Array<BBDisplayMode*> BBGlfwGame::GetDisplayModes(){
	int count=0;
	const GLFWvidmode *vmodes=glfwGetVideoModes( glfwGetPrimaryMonitor(),&count );
	Array<BBDisplayMode*> modes( count );
	int n=0;
	for( int i=0;i<count;++i ){
		const GLFWvidmode *vmode=&vmodes[i];
		if( vmode->refreshRate && vmode->refreshRate!=60 ) continue;
		modes[n++]=new BBDisplayMode( vmode->width,vmode->height );
	}
	return modes.Slice(0,n);
}

BBDisplayMode *BBGlfwGame::GetDesktopMode(){ 
	return new BBDisplayMode( _desktopMode.width,_desktopMode.height ); 
}

double BBGlfwGame::GetTime(){
	return glfwGetTime();
}

void BBGlfwGame::Sleep( double time ){
#if _WIN32
	WaitForSingleObject( GetCurrentThread(),(DWORD)( time*1000.0 ) );
#else
	timespec ts,rem;
	ts.tv_sec=floor(time);
	ts.tv_nsec=(time-floor(time))*1000000000.0;
	while( nanosleep( &ts,&rem )==EINTR ){
		ts=rem;
	}
#endif
}

void BBGlfwGame::UpdateEvents(){

	if( _suspended ){
		glfwWaitEvents();
	}else{
		glfwPollEvents();
	}
	if( glfwGetWindowAttrib( _window,GLFW_FOCUSED ) ){
		_focus=true;
		if( _suspended ){
			ResumeGame();
			_nextUpdate=0;
		}
	}else if( glfwGetWindowAttrib( _window,GLFW_ICONIFIED ) || CFG_MOJO_AUTO_SUSPEND_ENABLED ){
		if( _focus && !_suspended ){
			SuspendGame();
			_nextUpdate=0;
		}
	}
}

void BBGlfwGame::Run(){

#if	CFG_GLFW_WINDOW_WIDTH && CFG_GLFW_WINDOW_HEIGHT

	int flags=0;
#if CFG_GLFW_WINDOW_FULLSCREEN
	flags|=1;
#endif
#if CFG_GLFW_WINDOW_RESIZABLE
	flags|=2;
#endif
#if CFG_GLFW_WINDOW_DECORATED
	flags|=4;
#endif
#if CFG_GLFW_WINDOW_FLOATING
	flags|=8;
#endif
#if CFG_OPENGL_DEPTH_BUFFER_ENABLED
	flags|=16;
#endif

	SetDeviceWindow( CFG_GLFW_WINDOW_WIDTH,CFG_GLFW_WINDOW_HEIGHT,flags );

#endif

	StartGame();
	
	while( !glfwWindowShouldClose( _window ) ){
	
		RenderGame();
		
		glfwSwapBuffers( _window );
		
		//Wait for next update
		if( _nextUpdate ){
			double delay=_nextUpdate-GetTime();
			if( delay>0 ) Sleep( delay );
		}
		
		//Update user events
		UpdateEvents();

		//App suspended?		
		if( _suspended ){
			continue;
		}

		//'Go nuts' mode!
		if( !_updateRate ){
			UpdateGame();
			continue;
		}
		
		//Reset update timer?
		if( !_nextUpdate ){
			_nextUpdate=GetTime();
		}
		
		//Catch up updates...
		int i=0;
		for( ;i<4;++i ){
		
			UpdateGame();
			if( !_nextUpdate ) break;
			
			_nextUpdate+=_updatePeriod;
			
			if( _nextUpdate>GetTime() ) break;
		}
		
		if( i==4 ) _nextUpdate=0;
	}
}



//***** monkeygame.h *****

class BBMonkeyGame : public BBGlfwGame{
public:
	static void Main( int args,const char *argv[] );
};

//***** monkeygame.cpp *****

#define _QUOTE(X) #X
#define _STRINGIZE(X) _QUOTE(X)

static void onGlfwError( int err,const char *msg ){
	printf( "GLFW Error: err=%i, msg=%s\n",err,msg );
	fflush( stdout );
}

void BBMonkeyGame::Main( int argc,const char *argv[] ){

	glfwSetErrorCallback( onGlfwError );
	
	if( !glfwInit() ){
		puts( "glfwInit failed" );
		exit( -1 );
	}

	BBMonkeyGame *game=new BBMonkeyGame();
	
	try{
	
		bb_std_main( argc,argv );
		
	}catch( ThrowableObject *ex ){
	
		glfwTerminate();
		
		game->Die( ex );
		
		return;
	}

	if( game->Delegate() ) game->Run();
	
	glfwTerminate();
}


// GLFW mojo runtime.
//
// Copyright 2011 Mark Sibly, all rights reserved.
// No warranty implied; use at your own risk.

//***** gxtkGraphics.h *****

class gxtkSurface;

class gxtkGraphics : public Object{
public:

	enum{
		MAX_VERTS=1024,
		MAX_QUADS=(MAX_VERTS/4)
	};

	int width;
	int height;

	int colorARGB;
	float r,g,b,alpha;
	float ix,iy,jx,jy,tx,ty;
	bool tformed;

	float vertices[MAX_VERTS*5];
	unsigned short quadIndices[MAX_QUADS*6];

	int primType;
	int vertCount;
	gxtkSurface *primSurf;
	
	gxtkGraphics();
	
	void Flush();
	float *Begin( int type,int count,gxtkSurface *surf );
	
	//***** GXTK API *****
	virtual int Width();
	virtual int Height();
	
	virtual int  BeginRender();
	virtual void EndRender();
	virtual void DiscardGraphics();

	virtual gxtkSurface *LoadSurface( String path );
	virtual gxtkSurface *CreateSurface( int width,int height );
	virtual bool LoadSurface__UNSAFE__( gxtkSurface *surface,String path );
	
	virtual int Cls( float r,float g,float b );
	virtual int SetAlpha( float alpha );
	virtual int SetColor( float r,float g,float b );
	virtual int SetBlend( int blend );
	virtual int SetScissor( int x,int y,int w,int h );
	virtual int SetMatrix( float ix,float iy,float jx,float jy,float tx,float ty );
	
	virtual int DrawPoint( float x,float y );
	virtual int DrawRect( float x,float y,float w,float h );
	virtual int DrawLine( float x1,float y1,float x2,float y2 );
	virtual int DrawOval( float x1,float y1,float x2,float y2 );
	virtual int DrawPoly( Array<Float> verts );
	virtual int DrawPoly2( Array<Float> verts,gxtkSurface *surface,int srcx,int srcy );
	virtual int DrawSurface( gxtkSurface *surface,float x,float y );
	virtual int DrawSurface2( gxtkSurface *surface,float x,float y,int srcx,int srcy,int srcw,int srch );
	
	virtual int ReadPixels( Array<int> pixels,int x,int y,int width,int height,int offset,int pitch );
	virtual int WritePixels2( gxtkSurface *surface,Array<int> pixels,int x,int y,int width,int height,int offset,int pitch );
};

class gxtkSurface : public Object{
public:
	unsigned char *data;
	int width;
	int height;
	int depth;
	int format;
	int seq;
	
	GLuint texture;
	float uscale;
	float vscale;
	
	gxtkSurface();
	
	void SetData( unsigned char *data,int width,int height,int depth );
	void SetSubData( int x,int y,int w,int h,unsigned *src,int pitch );
	void Bind();
	
	~gxtkSurface();
	
	//***** GXTK API *****
	virtual int Discard();
	virtual int Width();
	virtual int Height();
	virtual int Loaded();
	virtual void OnUnsafeLoadComplete();
};

//***** gxtkGraphics.cpp *****

#ifndef GL_BGRA
#define GL_BGRA  0x80e1
#endif

#ifndef GL_CLAMP_TO_EDGE
#define GL_CLAMP_TO_EDGE 0x812f
#endif

#ifndef GL_GENERATE_MIPMAP
#define GL_GENERATE_MIPMAP 0x8191
#endif

static int Pow2Size( int n ){
	int i=1;
	while( i<n ) i+=i;
	return i;
}

gxtkGraphics::gxtkGraphics(){

	width=height=0;
	vertCount=0;
	
#ifdef _glfw3_h_
	GLFWwindow *window=BBGlfwGame::GlfwGame()->GetGLFWwindow();
	if( window ) glfwGetWindowSize( BBGlfwGame::GlfwGame()->GetGLFWwindow(),&width,&height );
#else
	glfwGetWindowSize( &width,&height );
#endif
	
	if( CFG_OPENGL_GLES20_ENABLED ) return;
	
	for( int i=0;i<MAX_QUADS;++i ){
		quadIndices[i*6  ]=(short)(i*4);
		quadIndices[i*6+1]=(short)(i*4+1);
		quadIndices[i*6+2]=(short)(i*4+2);
		quadIndices[i*6+3]=(short)(i*4);
		quadIndices[i*6+4]=(short)(i*4+2);
		quadIndices[i*6+5]=(short)(i*4+3);
	}
}

void gxtkGraphics::Flush(){
	if( !vertCount ) return;

	if( primSurf ){
		glEnable( GL_TEXTURE_2D );
		primSurf->Bind();
	}
		
	switch( primType ){
	case 1:
		glDrawArrays( GL_POINTS,0,vertCount );
		break;
	case 2:
		glDrawArrays( GL_LINES,0,vertCount );
		break;
	case 3:
		glDrawArrays( GL_TRIANGLES,0,vertCount );
		break;
	case 4:
		glDrawElements( GL_TRIANGLES,vertCount/4*6,GL_UNSIGNED_SHORT,quadIndices );
		break;
	default:
		for( int j=0;j<vertCount;j+=primType ){
			glDrawArrays( GL_TRIANGLE_FAN,j,primType );
		}
		break;
	}

	if( primSurf ){
		glDisable( GL_TEXTURE_2D );
	}

	vertCount=0;
}

float *gxtkGraphics::Begin( int type,int count,gxtkSurface *surf ){
	if( primType!=type || primSurf!=surf || vertCount+count>MAX_VERTS ){
		Flush();
		primType=type;
		primSurf=surf;
	}
	float *vp=vertices+vertCount*5;
	vertCount+=count;
	return vp;
}

//***** GXTK API *****

int gxtkGraphics::Width(){
	return width;
}

int gxtkGraphics::Height(){
	return height;
}

int gxtkGraphics::BeginRender(){

	width=height=0;
#ifdef _glfw3_h_
	glfwGetWindowSize( BBGlfwGame::GlfwGame()->GetGLFWwindow(),&width,&height );
#else
	glfwGetWindowSize( &width,&height );
#endif

#if CFG_OPENGL_GLES20_ENABLED
	return 0;
#else

	glViewport( 0,0,width,height );

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glOrtho( 0,width,height,0,-1,1 );
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	
	glEnableClientState( GL_VERTEX_ARRAY );
	glVertexPointer( 2,GL_FLOAT,20,&vertices[0] );	
	
	glEnableClientState( GL_TEXTURE_COORD_ARRAY );
	glTexCoordPointer( 2,GL_FLOAT,20,&vertices[2] );
	
	glEnableClientState( GL_COLOR_ARRAY );
	glColorPointer( 4,GL_UNSIGNED_BYTE,20,&vertices[4] );
	
	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE,GL_ONE_MINUS_SRC_ALPHA );
	
	glDisable( GL_TEXTURE_2D );
	
	vertCount=0;
	
	return 1;
	
#endif
}

void gxtkGraphics::EndRender(){
	if( !CFG_OPENGL_GLES20_ENABLED ) Flush();
}

void gxtkGraphics::DiscardGraphics(){
}

int gxtkGraphics::Cls( float r,float g,float b ){
	vertCount=0;

	glClearColor( r/255.0f,g/255.0f,b/255.0f,1 );
	glClear( GL_COLOR_BUFFER_BIT );

	return 0;
}

int gxtkGraphics::SetAlpha( float alpha ){
	this->alpha=alpha;
	
	int a=int(alpha*255);
	
	colorARGB=(a<<24) | (int(b*alpha)<<16) | (int(g*alpha)<<8) | int(r*alpha);
	
	return 0;
}

int gxtkGraphics::SetColor( float r,float g,float b ){
	this->r=r;
	this->g=g;
	this->b=b;

	int a=int(alpha*255);
	
	colorARGB=(a<<24) | (int(b*alpha)<<16) | (int(g*alpha)<<8) | int(r*alpha);
	
	return 0;
}

int gxtkGraphics::SetBlend( int blend ){

	Flush();
	
	switch( blend ){
	case 1:
		glBlendFunc( GL_ONE,GL_ONE );
		break;
	default:
		glBlendFunc( GL_ONE,GL_ONE_MINUS_SRC_ALPHA );
	}

	return 0;
}

int gxtkGraphics::SetScissor( int x,int y,int w,int h ){

	Flush();
	
	if( x!=0 || y!=0 || w!=Width() || h!=Height() ){
		glEnable( GL_SCISSOR_TEST );
		y=Height()-y-h;
		glScissor( x,y,w,h );
	}else{
		glDisable( GL_SCISSOR_TEST );
	}
	return 0;
}

int gxtkGraphics::SetMatrix( float ix,float iy,float jx,float jy,float tx,float ty ){

	tformed=(ix!=1 || iy!=0 || jx!=0 || jy!=1 || tx!=0 || ty!=0);

	this->ix=ix;this->iy=iy;this->jx=jx;this->jy=jy;this->tx=tx;this->ty=ty;

	return 0;
}

int gxtkGraphics::DrawPoint( float x,float y ){

	if( tformed ){
		float px=x;
		x=px * ix + y * jx + tx;
		y=px * iy + y * jy + ty;
	}
	
	float *vp=Begin( 1,1,0 );
	
	vp[0]=x+.5f;vp[1]=y+.5f;(int&)vp[4]=colorARGB;

	return 0;	
}
	
int gxtkGraphics::DrawLine( float x0,float y0,float x1,float y1 ){

	if( tformed ){
		float tx0=x0,tx1=x1;
		x0=tx0 * ix + y0 * jx + tx;y0=tx0 * iy + y0 * jy + ty;
		x1=tx1 * ix + y1 * jx + tx;y1=tx1 * iy + y1 * jy + ty;
	}
	
	float *vp=Begin( 2,2,0 );

	vp[0]=x0+.5f;vp[1]=y0+.5f;(int&)vp[4]=colorARGB;
	vp[5]=x1+.5f;vp[6]=y1+.5f;(int&)vp[9]=colorARGB;
	
	return 0;
}

int gxtkGraphics::DrawRect( float x,float y,float w,float h ){

	float x0=x,x1=x+w,x2=x+w,x3=x;
	float y0=y,y1=y,y2=y+h,y3=y+h;

	if( tformed ){
		float tx0=x0,tx1=x1,tx2=x2,tx3=x3;
		x0=tx0 * ix + y0 * jx + tx;y0=tx0 * iy + y0 * jy + ty;
		x1=tx1 * ix + y1 * jx + tx;y1=tx1 * iy + y1 * jy + ty;
		x2=tx2 * ix + y2 * jx + tx;y2=tx2 * iy + y2 * jy + ty;
		x3=tx3 * ix + y3 * jx + tx;y3=tx3 * iy + y3 * jy + ty;
	}
	
	float *vp=Begin( 4,4,0 );

	vp[0 ]=x0;vp[1 ]=y0;(int&)vp[4 ]=colorARGB;
	vp[5 ]=x1;vp[6 ]=y1;(int&)vp[9 ]=colorARGB;
	vp[10]=x2;vp[11]=y2;(int&)vp[14]=colorARGB;
	vp[15]=x3;vp[16]=y3;(int&)vp[19]=colorARGB;

	return 0;
}

int gxtkGraphics::DrawOval( float x,float y,float w,float h ){
	
	float xr=w/2.0f;
	float yr=h/2.0f;

	int n;
	if( tformed ){
		float dx_x=xr * ix;
		float dx_y=xr * iy;
		float dx=sqrtf( dx_x*dx_x+dx_y*dx_y );
		float dy_x=yr * jx;
		float dy_y=yr * jy;
		float dy=sqrtf( dy_x*dy_x+dy_y*dy_y );
		n=(int)( dx+dy );
	}else{
		n=(int)( fabs( xr )+fabs( yr ) );
	}
	
	if( n<12 ){
		n=12;
	}else if( n>MAX_VERTS ){
		n=MAX_VERTS;
	}else{
		n&=~3;
	}

	float x0=x+xr,y0=y+yr;
	
	float *vp=Begin( n,n,0 );

	for( int i=0;i<n;++i ){
	
		float th=i * 6.28318531f / n;

		float px=x0+cosf( th ) * xr;
		float py=y0-sinf( th ) * yr;
		
		if( tformed ){
			float ppx=px;
			px=ppx * ix + py * jx + tx;
			py=ppx * iy + py * jy + ty;
		}
		
		vp[0]=px;vp[1]=py;(int&)vp[4]=colorARGB;
		vp+=5;
	}
	
	return 0;
}

int gxtkGraphics::DrawPoly( Array<Float> verts ){

	int n=verts.Length()/2;
	if( n<1 || n>MAX_VERTS ) return 0;
	
	float *vp=Begin( n,n,0 );
	
	for( int i=0;i<n;++i ){
		int j=i*2;
		if( tformed ){
			vp[0]=verts[j] * ix + verts[j+1] * jx + tx;
			vp[1]=verts[j] * iy + verts[j+1] * jy + ty;
		}else{
			vp[0]=verts[j];
			vp[1]=verts[j+1];
		}
		(int&)vp[4]=colorARGB;
		vp+=5;
	}

	return 0;
}

int gxtkGraphics::DrawPoly2( Array<Float> verts,gxtkSurface *surface,int srcx,int srcy ){

	int n=verts.Length()/4;
	if( n<1 || n>MAX_VERTS ) return 0;
		
	float *vp=Begin( n,n,surface );
	
	for( int i=0;i<n;++i ){
		int j=i*4;
		if( tformed ){
			vp[0]=verts[j] * ix + verts[j+1] * jx + tx;
			vp[1]=verts[j] * iy + verts[j+1] * jy + ty;
		}else{
			vp[0]=verts[j];
			vp[1]=verts[j+1];
		}
		vp[2]=(srcx+verts[j+2])*surface->uscale;
		vp[3]=(srcy+verts[j+3])*surface->vscale;
		(int&)vp[4]=colorARGB;
		vp+=5;
	}
	
	return 0;
}

int gxtkGraphics::DrawSurface( gxtkSurface *surf,float x,float y ){
	
	float w=surf->Width();
	float h=surf->Height();
	float x0=x,x1=x+w,x2=x+w,x3=x;
	float y0=y,y1=y,y2=y+h,y3=y+h;
	float u0=0,u1=w*surf->uscale;
	float v0=0,v1=h*surf->vscale;

	if( tformed ){
		float tx0=x0,tx1=x1,tx2=x2,tx3=x3;
		x0=tx0 * ix + y0 * jx + tx;y0=tx0 * iy + y0 * jy + ty;
		x1=tx1 * ix + y1 * jx + tx;y1=tx1 * iy + y1 * jy + ty;
		x2=tx2 * ix + y2 * jx + tx;y2=tx2 * iy + y2 * jy + ty;
		x3=tx3 * ix + y3 * jx + tx;y3=tx3 * iy + y3 * jy + ty;
	}
	
	float *vp=Begin( 4,4,surf );
	
	vp[0 ]=x0;vp[1 ]=y0;vp[2 ]=u0;vp[3 ]=v0;(int&)vp[4 ]=colorARGB;
	vp[5 ]=x1;vp[6 ]=y1;vp[7 ]=u1;vp[8 ]=v0;(int&)vp[9 ]=colorARGB;
	vp[10]=x2;vp[11]=y2;vp[12]=u1;vp[13]=v1;(int&)vp[14]=colorARGB;
	vp[15]=x3;vp[16]=y3;vp[17]=u0;vp[18]=v1;(int&)vp[19]=colorARGB;
	
	return 0;
}

int gxtkGraphics::DrawSurface2( gxtkSurface *surf,float x,float y,int srcx,int srcy,int srcw,int srch ){
	
	float w=srcw;
	float h=srch;
	float x0=x,x1=x+w,x2=x+w,x3=x;
	float y0=y,y1=y,y2=y+h,y3=y+h;
	float u0=srcx*surf->uscale,u1=(srcx+srcw)*surf->uscale;
	float v0=srcy*surf->vscale,v1=(srcy+srch)*surf->vscale;

	if( tformed ){
		float tx0=x0,tx1=x1,tx2=x2,tx3=x3;
		x0=tx0 * ix + y0 * jx + tx;y0=tx0 * iy + y0 * jy + ty;
		x1=tx1 * ix + y1 * jx + tx;y1=tx1 * iy + y1 * jy + ty;
		x2=tx2 * ix + y2 * jx + tx;y2=tx2 * iy + y2 * jy + ty;
		x3=tx3 * ix + y3 * jx + tx;y3=tx3 * iy + y3 * jy + ty;
	}
	
	float *vp=Begin( 4,4,surf );
	
	vp[0 ]=x0;vp[1 ]=y0;vp[2 ]=u0;vp[3 ]=v0;(int&)vp[4 ]=colorARGB;
	vp[5 ]=x1;vp[6 ]=y1;vp[7 ]=u1;vp[8 ]=v0;(int&)vp[9 ]=colorARGB;
	vp[10]=x2;vp[11]=y2;vp[12]=u1;vp[13]=v1;(int&)vp[14]=colorARGB;
	vp[15]=x3;vp[16]=y3;vp[17]=u0;vp[18]=v1;(int&)vp[19]=colorARGB;
	
	return 0;
}
	
int gxtkGraphics::ReadPixels( Array<int> pixels,int x,int y,int width,int height,int offset,int pitch ){

	Flush();

	unsigned *p=(unsigned*)malloc(width*height*4);

	glReadPixels( x,this->height-y-height,width,height,GL_BGRA,GL_UNSIGNED_BYTE,p );
	
	for( int py=0;py<height;++py ){
		memcpy( &pixels[offset+py*pitch],&p[(height-py-1)*width],width*4 );
	}
	
	free( p );
	
	return 0;
}

int gxtkGraphics::WritePixels2( gxtkSurface *surface,Array<int> pixels,int x,int y,int width,int height,int offset,int pitch ){

	surface->SetSubData( x,y,width,height,(unsigned*)&pixels[offset],pitch );
	
	return 0;
}

//***** gxtkSurface *****

gxtkSurface::gxtkSurface():data(0),width(0),height(0),depth(0),format(0),seq(-1),texture(0),uscale(0),vscale(0){
}

gxtkSurface::~gxtkSurface(){
	Discard();
}

int gxtkSurface::Discard(){
	if( seq==glfwGraphicsSeq ){
		glDeleteTextures( 1,&texture );
		seq=-1;
	}
	if( data ){
		free( data );
		data=0;
	}
	return 0;
}

int gxtkSurface::Width(){
	return width;
}

int gxtkSurface::Height(){
	return height;
}

int gxtkSurface::Loaded(){
	return 1;
}

//Careful! Can't call any GL here as it may be executing off-thread.
//
void gxtkSurface::SetData( unsigned char *data,int width,int height,int depth ){

	this->data=data;
	this->width=width;
	this->height=height;
	this->depth=depth;
	
	unsigned char *p=data;
	int n=width*height;
	
	switch( depth ){
	case 1:
		format=GL_LUMINANCE;
		break;
	case 2:
		format=GL_LUMINANCE_ALPHA;
		if( data ){
			while( n-- ){	//premultiply alpha
				p[0]=p[0]*p[1]/255;
				p+=2;
			}
		}
		break;
	case 3:
		format=GL_RGB;
		break;
	case 4:
		format=GL_RGBA;
		if( data ){
			while( n-- ){	//premultiply alpha
				p[0]=p[0]*p[3]/255;
				p[1]=p[1]*p[3]/255;
				p[2]=p[2]*p[3]/255;
				p+=4;
			}
		}
		break;
	}
}

void gxtkSurface::SetSubData( int x,int y,int w,int h,unsigned *src,int pitch ){
	if( format!=GL_RGBA ) return;
	
	if( !data ) data=(unsigned char*)malloc( width*height*4 );
	
	unsigned *dst=(unsigned*)data+y*width+x;
	
	for( int py=0;py<h;++py ){
		unsigned *d=dst+py*width;
		unsigned *s=src+py*pitch;
		for( int px=0;px<w;++px ){
			unsigned p=*s++;
			unsigned a=p>>24;
			*d++=(a<<24) | ((p>>0&0xff)*a/255<<16) | ((p>>8&0xff)*a/255<<8) | ((p>>16&0xff)*a/255);
		}
	}
	
	if( seq==glfwGraphicsSeq ){
		glBindTexture( GL_TEXTURE_2D,texture );
		glPixelStorei( GL_UNPACK_ALIGNMENT,1 );
		if( width==pitch ){
			glTexSubImage2D( GL_TEXTURE_2D,0,x,y,w,h,format,GL_UNSIGNED_BYTE,dst );
		}else{
			for( int py=0;py<h;++py ){
				glTexSubImage2D( GL_TEXTURE_2D,0,x,y+py,w,1,format,GL_UNSIGNED_BYTE,dst+py*width );
			}
		}
	}
}

void gxtkSurface::Bind(){

	if( !glfwGraphicsSeq ) return;
	
	if( seq==glfwGraphicsSeq ){
		glBindTexture( GL_TEXTURE_2D,texture );
		return;
	}
	
	seq=glfwGraphicsSeq;
	
	glGenTextures( 1,&texture );
	glBindTexture( GL_TEXTURE_2D,texture );
	
	if( CFG_MOJO_IMAGE_FILTERING_ENABLED ){
		glTexParameteri( GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR );
		glTexParameteri( GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR );
	}else{
		glTexParameteri( GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST );
		glTexParameteri( GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST );
	}

	glTexParameteri( GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_CLAMP_TO_EDGE );
	glTexParameteri( GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_CLAMP_TO_EDGE );

	int texwidth=width;
	int texheight=height;
	
	glTexImage2D( GL_TEXTURE_2D,0,format,texwidth,texheight,0,format,GL_UNSIGNED_BYTE,0 );
	if( glGetError()!=GL_NO_ERROR ){
		texwidth=Pow2Size( width );
		texheight=Pow2Size( height );
		glTexImage2D( GL_TEXTURE_2D,0,format,texwidth,texheight,0,format,GL_UNSIGNED_BYTE,0 );
	}
	
	uscale=1.0/texwidth;
	vscale=1.0/texheight;
	
	if( data ){
		glPixelStorei( GL_UNPACK_ALIGNMENT,1 );
		glTexSubImage2D( GL_TEXTURE_2D,0,0,0,width,height,format,GL_UNSIGNED_BYTE,data );
	}
}

void gxtkSurface::OnUnsafeLoadComplete(){
	Bind();
}

bool gxtkGraphics::LoadSurface__UNSAFE__( gxtkSurface *surface,String path ){

	int width,height,depth;
	unsigned char *data=BBGlfwGame::GlfwGame()->LoadImageData( path,&width,&height,&depth );
	if( !data ) return false;
	
	surface->SetData( data,width,height,depth );
	return true;
}

gxtkSurface *gxtkGraphics::LoadSurface( String path ){
	gxtkSurface *surf=new gxtkSurface();
	if( !LoadSurface__UNSAFE__( surf,path ) ) return 0;
	surf->Bind();
	return surf;
}

gxtkSurface *gxtkGraphics::CreateSurface( int width,int height ){
	gxtkSurface *surf=new gxtkSurface();
	surf->SetData( 0,width,height,4 );
	surf->Bind();
	return surf;
}

//***** gxtkAudio.h *****

class gxtkSample;

class gxtkChannel{
public:
	ALuint source;
	gxtkSample *sample;
	int flags;
	int state;
	
	int AL_Source();
};

class gxtkAudio : public Object{
public:
	static gxtkAudio *audio;
	
	ALCdevice *alcDevice;
	ALCcontext *alcContext;
	gxtkChannel channels[33];

	gxtkAudio();

	virtual void mark();

	//***** GXTK API *****
	virtual int Suspend();
	virtual int Resume();

	virtual gxtkSample *LoadSample( String path );
	virtual bool LoadSample__UNSAFE__( gxtkSample *sample,String path );
	
	virtual int PlaySample( gxtkSample *sample,int channel,int flags );

	virtual int StopChannel( int channel );
	virtual int PauseChannel( int channel );
	virtual int ResumeChannel( int channel );
	virtual int ChannelState( int channel );
	virtual int SetVolume( int channel,float volume );
	virtual int SetPan( int channel,float pan );
	virtual int SetRate( int channel,float rate );
	
	virtual int PlayMusic( String path,int flags );
	virtual int StopMusic();
	virtual int PauseMusic();
	virtual int ResumeMusic();
	virtual int MusicState();
	virtual int SetMusicVolume( float volume );
};

class gxtkSample : public Object{
public:
	ALuint al_buffer;

	gxtkSample();
	gxtkSample( ALuint buf );
	~gxtkSample();
	
	void SetBuffer( ALuint buf );
	
	//***** GXTK API *****
	virtual int Discard();
};

//***** gxtkAudio.cpp *****

gxtkAudio *gxtkAudio::audio;

static std::vector<ALuint> discarded;

static void FlushDiscarded(){

	if( !discarded.size() ) return;
	
	for( int i=0;i<33;++i ){
		gxtkChannel *chan=&gxtkAudio::audio->channels[i];
		if( chan->state ){
			int state=0;
			alGetSourcei( chan->source,AL_SOURCE_STATE,&state );
			if( state==AL_STOPPED ) alSourcei( chan->source,AL_BUFFER,0 );
		}
	}
	
	std::vector<ALuint> out;
	
	for( int i=0;i<discarded.size();++i ){
		ALuint buf=discarded[i];
		alDeleteBuffers( 1,&buf );
		ALenum err=alGetError();
		if( err==AL_NO_ERROR ){
//			printf( "alDeleteBuffers OK!\n" );fflush( stdout );
		}else{
//			printf( "alDeleteBuffers failed...\n" );fflush( stdout );
			out.push_back( buf );
		}
	}
	discarded=out;
}

int gxtkChannel::AL_Source(){
	if( source ) return source;

	alGetError();
	alGenSources( 1,&source );
	if( alGetError()==AL_NO_ERROR ) return source;
	
	//couldn't create source...steal a free source...?
	//
	source=0;
	for( int i=0;i<32;++i ){
		gxtkChannel *chan=&gxtkAudio::audio->channels[i];
		if( !chan->source || gxtkAudio::audio->ChannelState( i ) ) continue;
//		puts( "Stealing source!" );
		source=chan->source;
		chan->source=0;
		break;
	}
	return source;
}

gxtkAudio::gxtkAudio(){

	audio=this;
	
	alcDevice=alcOpenDevice( 0 );
	if( !alcDevice ){
		alcDevice=alcOpenDevice( "Generic Hardware" );
		if( !alcDevice ) alcDevice=alcOpenDevice( "Generic Software" );
	}

//	bbPrint( "opening openal device" );
	if( alcDevice ){
		if( (alcContext=alcCreateContext( alcDevice,0 )) ){
			if( (alcMakeContextCurrent( alcContext )) ){
				//alc all go!
			}else{
				bbPrint( "OpenAl error: alcMakeContextCurrent failed" );
			}
		}else{
			bbPrint( "OpenAl error: alcCreateContext failed" );
		}
	}else{
		bbPrint( "OpenAl error: alcOpenDevice failed" );
	}

	alDistanceModel( AL_NONE );
	
	memset( channels,0,sizeof(channels) );

	channels[32].AL_Source();
}

void gxtkAudio::mark(){
	for( int i=0;i<33;++i ){
		gxtkChannel *chan=&channels[i];
		if( chan->state!=0 ){
			int state=0;
			alGetSourcei( chan->source,AL_SOURCE_STATE,&state );
			if( state!=AL_STOPPED ) gc_mark( chan->sample );
		}
	}
}

int gxtkAudio::Suspend(){
	for( int i=0;i<33;++i ){
		gxtkChannel *chan=&channels[i];
		if( chan->state==1 ){
			int state=0;
			alGetSourcei( chan->source,AL_SOURCE_STATE,&state );
			if( state==AL_PLAYING ) alSourcePause( chan->source );
		}
	}
	return 0;
}

int gxtkAudio::Resume(){
	for( int i=0;i<33;++i ){
		gxtkChannel *chan=&channels[i];
		if( chan->state==1 ){
			int state=0;
			alGetSourcei( chan->source,AL_SOURCE_STATE,&state );
			if( state==AL_PAUSED ) alSourcePlay( chan->source );
		}
	}
	return 0;
}

bool gxtkAudio::LoadSample__UNSAFE__( gxtkSample *sample,String path ){

	int length=0;
	int channels=0;
	int format=0;
	int hertz=0;
	unsigned char *data=BBGlfwGame::GlfwGame()->LoadAudioData( path,&length,&channels,&format,&hertz );
	if( !data ) return false;
	
	int al_format=0;
	if( format==1 && channels==1 ){
		al_format=AL_FORMAT_MONO8;
	}else if( format==1 && channels==2 ){
		al_format=AL_FORMAT_STEREO8;
	}else if( format==2 && channels==1 ){
		al_format=AL_FORMAT_MONO16;
	}else if( format==2 && channels==2 ){
		al_format=AL_FORMAT_STEREO16;
	}
	
	int size=length*channels*format;
	
	ALuint al_buffer;
	alGenBuffers( 1,&al_buffer );
	alBufferData( al_buffer,al_format,data,size,hertz );
	free( data );
	
	sample->SetBuffer( al_buffer );
	return true;
}

gxtkSample *gxtkAudio::LoadSample( String path ){
	FlushDiscarded();
	gxtkSample *sample=new gxtkSample();
	if( !LoadSample__UNSAFE__( sample,path ) ) return 0;
	return sample;
}

int gxtkAudio::PlaySample( gxtkSample *sample,int channel,int flags ){

	FlushDiscarded();
	
	gxtkChannel *chan=&channels[channel];
	
	if( !chan->AL_Source() ) return -1;
	
	alSourceStop( chan->source );
	alSourcei( chan->source,AL_BUFFER,sample->al_buffer );
	alSourcei( chan->source,AL_LOOPING,flags ? 1 : 0 );
	alSourcePlay( chan->source );
	
	gc_assign( chan->sample,sample );

	chan->flags=flags;
	chan->state=1;

	return 0;
}

int gxtkAudio::StopChannel( int channel ){
	gxtkChannel *chan=&channels[channel];

	if( chan->state!=0 ){
		alSourceStop( chan->source );
		chan->state=0;
	}
	return 0;
}

int gxtkAudio::PauseChannel( int channel ){
	gxtkChannel *chan=&channels[channel];

	if( chan->state==1 ){
		int state=0;
		alGetSourcei( chan->source,AL_SOURCE_STATE,&state );
		if( state==AL_STOPPED ){
			chan->state=0;
		}else{
			alSourcePause( chan->source );
			chan->state=2;
		}
	}
	return 0;
}

int gxtkAudio::ResumeChannel( int channel ){
	gxtkChannel *chan=&channels[channel];

	if( chan->state==2 ){
		alSourcePlay( chan->source );
		chan->state=1;
	}
	return 0;
}

int gxtkAudio::ChannelState( int channel ){
	gxtkChannel *chan=&channels[channel];
	
	if( chan->state==1 ){
		int state=0;
		alGetSourcei( chan->source,AL_SOURCE_STATE,&state );
		if( state==AL_STOPPED ) chan->state=0;
	}
	return chan->state;
}

int gxtkAudio::SetVolume( int channel,float volume ){
	gxtkChannel *chan=&channels[channel];

	alSourcef( chan->AL_Source(),AL_GAIN,volume );
	return 0;
}

int gxtkAudio::SetPan( int channel,float pan ){
	gxtkChannel *chan=&channels[channel];
	
	float x=sinf( pan ),y=0,z=-cosf( pan );
	alSource3f( chan->AL_Source(),AL_POSITION,x,y,z );
	return 0;
}

int gxtkAudio::SetRate( int channel,float rate ){
	gxtkChannel *chan=&channels[channel];

	alSourcef( chan->AL_Source(),AL_PITCH,rate );
	return 0;
}

int gxtkAudio::PlayMusic( String path,int flags ){
	StopMusic();
	
	gxtkSample *music=LoadSample( path );
	if( !music ) return -1;
	
	PlaySample( music,32,flags );
	return 0;
}

int gxtkAudio::StopMusic(){
	StopChannel( 32 );
	return 0;
}

int gxtkAudio::PauseMusic(){
	PauseChannel( 32 );
	return 0;
}

int gxtkAudio::ResumeMusic(){
	ResumeChannel( 32 );
	return 0;
}

int gxtkAudio::MusicState(){
	return ChannelState( 32 );
}

int gxtkAudio::SetMusicVolume( float volume ){
	SetVolume( 32,volume );
	return 0;
}

gxtkSample::gxtkSample():
al_buffer(0){
}

gxtkSample::gxtkSample( ALuint buf ):
al_buffer(buf){
}

gxtkSample::~gxtkSample(){
	Discard();
}

void gxtkSample::SetBuffer( ALuint buf ){
	al_buffer=buf;
}

int gxtkSample::Discard(){
	if( al_buffer ){
		discarded.push_back( al_buffer );
		al_buffer=0;
	}
	return 0;
}


// ***** thread.h *****

#if __cplusplus_winrt

using namespace Windows::System::Threading;

#endif

class BBThread : public Object{
public:
	Object *result;
	
	BBThread();
	
	virtual void Start();
	virtual bool IsRunning();
	
	virtual Object *Result();
	virtual void SetResult( Object *result );
	
	static  String Strdup( const String &str );
	
	virtual void Run__UNSAFE__();
	
	
private:

	enum{
		INIT=0,
		RUNNING=1,
		FINISHED=2
	};

	
	int _state;
	Object *_result;
	
#if __cplusplus_winrt

	friend class Launcher;

	class Launcher{
	
		friend class BBThread;
		BBThread *_thread;
		
		Launcher( BBThread *thread ):_thread(thread){
		}
		
		public:
		
		void operator()( IAsyncAction ^operation ){
			_thread->Run__UNSAFE__();
			_thread->_state=FINISHED;
		} 
	};
	
#elif _WIN32

	static DWORD WINAPI run( void *p );
	
#else

	static void *run( void *p );
	
#endif

};

// ***** thread.cpp *****

BBThread::BBThread():_state( INIT ),_result( 0 ){
}

bool BBThread::IsRunning(){
	return _state==RUNNING;
}

Object *BBThread::Result(){
	return _result;
}

void BBThread::SetResult( Object *result ){
	_result=result;
}

String BBThread::Strdup( const String &str ){
	return str.Copy();
}

void BBThread::Run__UNSAFE__(){
}

#if __cplusplus_winrt

void BBThread::Start(){
	if( _state==RUNNING ) return;
	
	_result=0;
	_state=RUNNING;
	
	Launcher launcher( this );
	
	auto handler=ref new WorkItemHandler( launcher );
	
	ThreadPool::RunAsync( handler );
}

#elif _WIN32

void BBThread::Start(){
	if( _state==RUNNING ) return;
	
	_result=0;
	_state=RUNNING;
	
	DWORD _id;
	HANDLE _handle;

	if( _handle=CreateThread( 0,0,run,this,0,&_id ) ){
		CloseHandle( _handle );
		return;
	}
	
	puts( "CreateThread failed!" );
	exit( -1 );
}

DWORD WINAPI BBThread::run( void *p ){
	BBThread *thread=(BBThread*)p;

	thread->Run__UNSAFE__();
	
	thread->_state=FINISHED;
	return 0;
}

#else

void BBThread::Start(){
	if( _state==RUNNING ) return;
	
	_result=0;
	_state=RUNNING;
	
	pthread_t _handle;
	
	if( !pthread_create( &_handle,0,run,this ) ){
		pthread_detach( _handle );
		return;
	}
	
	puts( "pthread_create failed!" );
	exit( -1 );
}

void *BBThread::run( void *p ){
	BBThread *thread=(BBThread*)p;

	thread->Run__UNSAFE__();

	thread->_state=FINISHED;
	return 0;
}

#endif


// ***** databuffer.h *****

class BBDataBuffer : public Object{
public:
	
	BBDataBuffer();
	
	~BBDataBuffer();
	
	bool _New( int length,void *data=0 );
	
	bool _Load( String path );
	
	void _LoadAsync( const String &path,BBThread *thread );

	void Discard();
	
	const void *ReadPointer( int offset=0 ){
		return _data+offset;
	}
	
	void *WritePointer( int offset=0 ){
		return _data+offset;
	}
	
	int Length(){
		return _length;
	}
	
	void PokeByte( int addr,int value ){
		*(_data+addr)=value;
	}

	void PokeShort( int addr,int value ){
		*(short*)(_data+addr)=value;
	}
	
	void PokeInt( int addr,int value ){
		*(int*)(_data+addr)=value;
	}
	
	void PokeFloat( int addr,float value ){
		*(float*)(_data+addr)=value;
	}

	int PeekByte( int addr ){
		return *(_data+addr);
	}
	
	int PeekShort( int addr ){
		return *(short*)(_data+addr);
	}
	
	int PeekInt( int addr ){
		return *(int*)(_data+addr);
	}
	
	float PeekFloat( int addr ){
		return *(float*)(_data+addr);
	}
	
private:
	signed char *_data;
	int _length;
};

// ***** databuffer.cpp *****

BBDataBuffer::BBDataBuffer():_data(0),_length(0){
}

BBDataBuffer::~BBDataBuffer(){
	if( _data ) free( _data );
}

bool BBDataBuffer::_New( int length,void *data ){
	if( _data ) return false;
	if( !data ) data=malloc( length );
	_data=(signed char*)data;
	_length=length;
	return true;
}

bool BBDataBuffer::_Load( String path ){
	if( _data ) return false;
	
	_data=(signed char*)BBGame::Game()->LoadData( path,&_length );
	if( !_data ) return false;
	
	return true;
}

void BBDataBuffer::_LoadAsync( const String &cpath,BBThread *thread ){

	String path=cpath.Copy();
	
	if( _Load( path ) ) thread->SetResult( this );
}

void BBDataBuffer::Discard(){
	if( !_data ) return;
	free( _data );
	_data=0;
	_length=0;
}


// ***** stream.h *****

class BBStream : public Object{
public:

	virtual int Eof(){
		return 0;
	}

	virtual void Close(){
	}

	virtual int Length(){
		return 0;
	}
	
	virtual int Position(){
		return 0;
	}
	
	virtual int Seek( int position ){
		return 0;
	}
	
	virtual int Read( BBDataBuffer *buffer,int offset,int count ){
		return 0;
	}

	virtual int Write( BBDataBuffer *buffer,int offset,int count ){
		return 0;
	}
};

// ***** stream.cpp *****


// ***** filestream.h *****

class BBFileStream : public BBStream{
public:

	BBFileStream();
	~BBFileStream();

	void Close();
	int Eof();
	int Length();
	int Position();
	int Seek( int position );
	int Read( BBDataBuffer *buffer,int offset,int count );
	int Write( BBDataBuffer *buffer,int offset,int count );

	bool Open( String path,String mode );
	
private:
	FILE *_file;
	int _position;
	int _length;
};

// ***** filestream.cpp *****

BBFileStream::BBFileStream():_file(0),_position(0),_length(0){
}

BBFileStream::~BBFileStream(){
	if( _file ) fclose( _file );
}

bool BBFileStream::Open( String path,String mode ){
	if( _file ) return false;

	String fmode;	
	if( mode=="r" ){
		fmode="rb";
	}else if( mode=="w" ){
		fmode="wb";
	}else if( mode=="u" ){
		fmode="rb+";
	}else{
		return false;
	}

	_file=BBGame::Game()->OpenFile( path,fmode );
	if( !_file && mode=="u" ) _file=BBGame::Game()->OpenFile( path,"wb+" );
	if( !_file ) return false;
	
	fseek( _file,0,SEEK_END );
	_length=ftell( _file );
	fseek( _file,0,SEEK_SET );
	_position=0;
	
	return true;
}

void BBFileStream::Close(){
	if( !_file ) return;
	
	fclose( _file );
	_file=0;
	_position=0;
	_length=0;
}

int BBFileStream::Eof(){
	if( !_file ) return -1;
	
	return _position==_length;
}

int BBFileStream::Length(){
	return _length;
}

int BBFileStream::Position(){
	return _position;
}

int BBFileStream::Seek( int position ){
	if( !_file ) return 0;
	
	fseek( _file,position,SEEK_SET );
	_position=ftell( _file );
	return _position;
}

int BBFileStream::Read( BBDataBuffer *buffer,int offset,int count ){
	if( !_file ) return 0;
	
	int n=fread( buffer->WritePointer(offset),1,count,_file );
	_position+=n;
	return n;
}

int BBFileStream::Write( BBDataBuffer *buffer,int offset,int count ){
	if( !_file ) return 0;
	
	int n=fwrite( buffer->ReadPointer(offset),1,count,_file );
	_position+=n;
	if( _position>_length ) _length=_position;
	return n;
}


#if !WINDOWS_8

// ***** socket.h *****

#if WINDOWS_PHONE_8

#include <Winsock2.h>

typedef int socklen_t;

#elif _WIN32

#include <winsock.h>

typedef int socklen_t;

#else

#include <netdb.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <arpa/inet.h>
#include <netinet/tcp.h>

#define closesocket close
#define ioctlsocket ioctl

#endif

class BBSocketAddress : public Object{
public:
	sockaddr_in _sa;
	
	BBSocketAddress();
	
	void Set( String host,int port );
	void Set( BBSocketAddress *address );
	void Set( const sockaddr_in &sa );
	
	String Host(){ Validate();return _host; }
	int Port(){ Validate();return _port; }
	
private:
	bool _valid;
	String _host;
	int _port;
	
	void Validate();
};

class BBSocket : public Object{
public:
	enum{
		PROTOCOL_CLIENT=1,
		PROTOCOL_SERVER=2,
		PROTOCOL_DATAGRAM=3
	};
	
	BBSocket();
	BBSocket( int sock );
	~BBSocket();
	
	bool Open( int protocol );
	void Close();
	
	bool Bind( String host,int port );
	bool Connect( String host,int port );
	bool Listen( int backlog );
	bool Accept();
	BBSocket *Accepted();

	int Send( BBDataBuffer *data,int offset,int count );
	int Receive( BBDataBuffer *data,int offset,int count );

	int SendTo( BBDataBuffer *data,int offset,int count,BBSocketAddress *address );
	int ReceiveFrom( BBDataBuffer *data,int offset,int count,BBSocketAddress *address );
	
	void GetLocalAddress( BBSocketAddress *address );
	void GetRemoteAddress( BBSocketAddress *address );
	
	static void InitSockets();
	
protected:
	int _sock;
	int _proto;
	int _accepted;
};

// ***** socket.cpp *****

static void setsockaddr( sockaddr_in *sa,String host,int port ){
	memset( sa,0,sizeof(*sa) );
	sa->sin_family=AF_INET;
	sa->sin_port=htons( port );
	sa->sin_addr.s_addr=htonl( INADDR_ANY );
	
	if( host.Length() && host.Length()<1024 ){
		char buf[1024];
		for( int i=0;i<host.Length();++i ) buf[i]=host[i];
		buf[host.Length()]=0;
		if( hostent *host=gethostbyname( buf ) ){
			if( char *hostip=inet_ntoa(*(in_addr *)*host->h_addr_list) ){
				sa->sin_addr.s_addr=inet_addr( hostip );
			}
		}
	}
}

void BBSocket::InitSockets(){
#if _WIN32
	static bool started;
	if( !started ){
		WSADATA ws;
		WSAStartup( 0x101,&ws );
		started=true;
	}
#endif
}

BBSocketAddress::BBSocketAddress():_valid( false ){
	BBSocket::InitSockets();
	memset( &_sa,0,sizeof(_sa) );
	_sa.sin_family=AF_INET;
}

void BBSocketAddress::Set( String host,int port ){
	setsockaddr( &_sa,host,port );
	_valid=false;
}

void BBSocketAddress::Set( BBSocketAddress *address ){
	_sa=address->_sa;
	_valid=false;
}

void BBSocketAddress::Set( const sockaddr_in &sa ){
	_sa=sa;
	_valid=false;
}

void BBSocketAddress::Validate(){
	if( _valid ) return;
	_host=String( int(_sa.sin_addr.s_addr)&0xff )+"."+String( int(_sa.sin_addr.s_addr>>8)&0xff )+"."+String( int(_sa.sin_addr.s_addr>>16)&0xff )+"."+String( int(_sa.sin_addr.s_addr>>24)&0xff );
	_port=htons( _sa.sin_port );
	_valid=true;
}

BBSocket::BBSocket():_sock( -1 ){
	BBSocket::InitSockets();
}

BBSocket::BBSocket( int sock ):_sock( sock ){
}

BBSocket::~BBSocket(){

	if( _sock>=0 ) closesocket( _sock );
}

bool BBSocket::Open( int proto ){

	if( _sock>=0 ) return false;
	
	switch( proto ){
	case PROTOCOL_CLIENT:
	case PROTOCOL_SERVER:
		_sock=socket( AF_INET,SOCK_STREAM,IPPROTO_TCP );
		if( _sock>=0 ){
			//nodelay
			int nodelay=1;
			setsockopt( _sock,IPPROTO_TCP,TCP_NODELAY,(const char*)&nodelay,sizeof(nodelay) );
	
			//Do this on Mac so server ports can be quickly reused...
			#if __APPLE__ || __linux
			int flag=1;
			setsockopt( _sock,SOL_SOCKET,SO_REUSEADDR,&flag,sizeof(flag) );
			#endif
		}
		break;
	case PROTOCOL_DATAGRAM:
		_sock=socket( AF_INET,SOCK_DGRAM,IPPROTO_UDP );
		break;
	}
	
	if( _sock<0 ) return false;
	
	_proto=proto;
	return true;
}

void BBSocket::Close(){
	if( _sock<0 ) return;
	closesocket( _sock );
	_sock=-1;
}

void BBSocket::GetLocalAddress( BBSocketAddress *address ){
	sockaddr_in sa;
	memset( &sa,0,sizeof(sa) );
	sa.sin_family=AF_INET;
	socklen_t size=sizeof(sa);
	if( _sock>=0 ) getsockname( _sock,(sockaddr*)&sa,&size );
	address->Set( sa );
}

void BBSocket::GetRemoteAddress( BBSocketAddress *address ){
	sockaddr_in sa;
	memset( &sa,0,sizeof(sa) );
	sa.sin_family=AF_INET;
	socklen_t size=sizeof(sa);
	if( _sock>=0 ) getpeername( _sock,(sockaddr*)&sa,&size );
	address->Set( sa );
}

bool BBSocket::Bind( String host,int port ){

	sockaddr_in sa;
	setsockaddr( &sa,host,port );
	
	return bind( _sock,(sockaddr*)&sa,sizeof(sa) )>=0;
}

bool BBSocket::Connect( String host,int port ){

	sockaddr_in sa;
	setsockaddr( &sa,host,port );
	
	return connect( _sock,(sockaddr*)&sa,sizeof(sa) )>=0;
}

bool BBSocket::Listen( int backlog ){
	return listen( _sock,backlog )>=0;
}

bool BBSocket::Accept(){
	_accepted=accept( _sock,0,0 );
	return _accepted>=0;
}

BBSocket *BBSocket::Accepted(){
	if( _accepted>=0 ) return new BBSocket( _accepted );
	return 0;
}

int BBSocket::Send( BBDataBuffer *data,int offset,int count ){
	return send( _sock,(const char*)data->ReadPointer(offset),count,0 );
}

int BBSocket::Receive( BBDataBuffer *data,int offset,int count ){
	return recv( _sock,(char*)data->WritePointer( offset ),count,0 );
}

int BBSocket::SendTo( BBDataBuffer *data,int offset,int count,BBSocketAddress *address ){
	return sendto( _sock,(const char*)data->ReadPointer(offset),count,0,(sockaddr*)&address->_sa,sizeof(address->_sa) );
}

int BBSocket::ReceiveFrom( BBDataBuffer *data,int offset,int count,BBSocketAddress *address ){
	sockaddr_in sa;
	socklen_t size=sizeof(sa);
	memset( &sa,0,size );
	int n=recvfrom( _sock,(char*)data->WritePointer( offset ),count,0,(sockaddr*)&sa,&size );
	address->Set( sa );
	return n;
}

#endif


// The gloriously *MAD* winrt version!

#if WINDOWS_8

// ***** socket_winrt.h *****

#include <map>

using namespace Windows::Networking;
using namespace Windows::Networking::Sockets;
using namespace Windows::Storage::Streams;

class BBSocketAddress : public Object{
public:
	HostName ^hostname;
	Platform::String ^service;
	
	BBSocketAddress();

	void Set( BBSocketAddress *address );
	void Set( String host,int port );

	String Host();
	int Port();
	
	bool operator<( const BBSocketAddress &t )const;
};

class BBSocket : public Object{
public:

	enum{
		PROTOCOL_STREAM=1,
		PROTOCOL_SERVER=2,
		PROTOCOL_DATAGRAM=3
	};

	BBSocket();
	~BBSocket();
	
	bool Open( int protocol );
	bool Open( StreamSocket ^stream );
	void Close();
	
	bool Bind( String host,int port );
	bool Connect( String host,int port );
	bool Listen( int backlog );
	bool Accept();
	BBSocket *Accepted();

	int Send( BBDataBuffer *data,int offset,int count );
	int Receive( BBDataBuffer *data,int offset,int count );
	
	int SendTo( BBDataBuffer *data,int offset,int count,BBSocketAddress *address );
	int ReceiveFrom( BBDataBuffer *data,int offset,int count,BBSocketAddress *address );
	
	void GetLocalAddress( BBSocketAddress *address );
	void GetRemoteAddress( BBSocketAddress *address );

private:

	StreamSocket ^_stream;
	StreamSocketListener ^_server;
	DatagramSocket ^_datagram;
	
	HANDLE _revent;
	HANDLE _wevent;

	DataReader ^_reader;
	DataWriter ^_writer;
	
	AsyncOperationCompletedHandler<unsigned int> ^_recvhandler;
	AsyncOperationCompletedHandler<unsigned int> ^_sendhandler;
	AsyncOperationCompletedHandler<IOutputStream^> ^_getouthandler; 
	
	//for "server" sockets only
	StreamSocket ^_accepted;
	std::vector<StreamSocket^> _acceptQueue;
	int _acceptPut,_acceptGet;
	HANDLE _acceptSema;	

	//for "datagram" sockets only
	typedef DatagramSocketMessageReceivedEventArgs RecvArgs;
	std::vector<RecvArgs^> _recvQueue;
	int _recvPut,_recvGet;
	HANDLE _recvSema;
	
	//for "datagram" sendto
	std::map<BBSocketAddress,DataWriter^> _sendToMap;
	
	template<class X,class Y> struct Delegate{
		BBSocket *socket;
		void (BBSocket::*func)( X,Y );
		Delegate( BBSocket *socket,void (BBSocket::*func)( X,Y ) ):socket( socket ),func( func ){
		}
		void operator()( X x,Y y ){
			(socket->*func)( x,y );
		}
	};
	template<class X,class Y> friend struct Delegate;
	
	template<class X,class Y> Delegate<X,Y> MakeDelegate( void (BBSocket::*func)( X,Y ) ){
		return Delegate<X,Y>( this,func );
	}
	
	template<class X,class Y> TypedEventHandler<X,Y> ^CreateTypedEventHandler( void (BBSocket::*func)( X,Y ) ){
		return ref new TypedEventHandler<X,Y>( Delegate<X,Y>( this,func ) );
	}

	bool Wait( IAsyncAction ^action );
	
	void OnActionComplete( IAsyncAction ^action,AsyncStatus status );
	void OnSendComplete( IAsyncOperation<unsigned int> ^op,AsyncStatus status );
	void OnReceiveComplete( IAsyncOperation<unsigned int> ^op,AsyncStatus status );
	void OnConnectionReceived( StreamSocketListener ^listener,StreamSocketListenerConnectionReceivedEventArgs ^args );
	void OnMessageReceived( DatagramSocket ^socket,DatagramSocketMessageReceivedEventArgs ^args );
	void OnGetOutputStreamComplete( IAsyncOperation<IOutputStream^> ^op,AsyncStatus status );
};

// ***** socket_winrt.cpp *****

BBSocketAddress::BBSocketAddress():hostname( nullptr ),service( nullptr ){
}

void BBSocketAddress::Set( String host,int port ){
	HostName ^hostname=nullptr;
	if( host.Length() ) hostname=ref new HostName( host.ToWinRTString() );
	service=String( port ).ToWinRTString();
}

void BBSocketAddress::Set( BBSocketAddress *address ){
	hostname=address->hostname;
	service=address->service;
}

String BBSocketAddress::Host(){
	return hostname ? hostname->CanonicalName : "0.0.0.0";
}

int BBSocketAddress::Port(){
	return service ? String( service->Data(),service->Length() ).ToInt() : 0;
}

bool BBSocketAddress::operator<( const BBSocketAddress &t )const{
	if( hostname || t.hostname ){
		if( !hostname ) return true;
		if( !t.hostname ) return false;
		int n=HostName::Compare( hostname->CanonicalName,t.hostname->CanonicalName );
		if( n ) return n<0;
	}
	if( service || t.service ){
		if( !service ) return -1;
		if( !t.service ) return 1;
		int n=Platform::String::CompareOrdinal( service,t.service );
		if( n ) return n<0;
	}
	return false;
}

BBSocket::BBSocket(){

	_revent=CreateEventEx( 0,0,0,EVENT_ALL_ACCESS );
	_wevent=CreateEventEx( 0,0,0,EVENT_ALL_ACCESS );
	
	_recvSema=0;
	_acceptSema=0;
	
	_sendhandler=ref new AsyncOperationCompletedHandler<unsigned int>( MakeDelegate( &BBSocket::OnSendComplete ) );
	_recvhandler=ref new AsyncOperationCompletedHandler<unsigned int>( MakeDelegate( &BBSocket::OnReceiveComplete ) );
	_getouthandler=ref new AsyncOperationCompletedHandler<IOutputStream^>( MakeDelegate( &BBSocket::OnGetOutputStreamComplete ) );	
}

BBSocket::~BBSocket(){
	if( _revent ) CloseHandle( _revent );
	if( _wevent ) CloseHandle( _wevent );
	if( _recvSema ) CloseHandle( _recvSema );
	if( _acceptSema ) CloseHandle( _acceptSema );
}

void BBSocket::OnActionComplete( IAsyncAction ^action,AsyncStatus status ){
	SetEvent( _revent );
}

bool BBSocket::Wait( IAsyncAction ^action ){
	action->Completed=ref new AsyncActionCompletedHandler( MakeDelegate( &BBSocket::OnActionComplete ) );
	if( WaitForSingleObjectEx( _revent,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return false;
	return action->Status==AsyncStatus::Completed;
}

bool BBSocket::Open( int protocol ){

	switch( protocol ){
	case PROTOCOL_STREAM:
		_stream=ref new StreamSocket();
		return true;
	case PROTOCOL_SERVER:
		_acceptGet=_acceptPut=0;
		_acceptQueue.resize( 256 );
		_acceptSema=CreateSemaphoreEx( 0,0,256,0,0,EVENT_ALL_ACCESS );
		_server=ref new StreamSocketListener();
		_server->ConnectionReceived+=CreateTypedEventHandler( &BBSocket::OnConnectionReceived );
		return true;
	case PROTOCOL_DATAGRAM:
		_recvGet=_recvPut=0;
		_recvQueue.resize( 256 );
		_recvSema=CreateSemaphoreEx( 0,0,256,0,0,EVENT_ALL_ACCESS );
		_datagram=ref new DatagramSocket();
		_datagram->MessageReceived+=CreateTypedEventHandler( &BBSocket::OnMessageReceived );
		return true;
	}

	return false;
}

bool BBSocket::Open( StreamSocket ^stream ){

	_stream=stream;
	
	_reader=ref new DataReader( _stream->InputStream );
	_reader->InputStreamOptions=InputStreamOptions::Partial;
	
	_writer=ref new DataWriter( _stream->OutputStream );
	
	return true;
}

void BBSocket::Close(){
	if( _stream ) delete _stream;
	if( _server ) delete _server;
	if( _datagram ) delete _datagram;
	_stream=nullptr;
	_server=nullptr;
	_datagram=nullptr;
}

bool BBSocket::Bind( String host,int port ){

	HostName ^hostname=nullptr;
	if( host.Length() ) hostname=ref new HostName( host.ToWinRTString() );
	auto service=(port ? String( port ) : String()).ToWinRTString();

	if( _stream ){
//		return Wait( _stream->BindEndpointAsync( hostname,service ) );
	}else if( _server ){
		return Wait( _server->BindEndpointAsync( hostname,service ) );
	}else if( _datagram ){
		return Wait( _datagram->BindEndpointAsync( hostname,service ) );
	}

	return false;
}

bool BBSocket::Listen( int backlog ){
	return _server!=nullptr;
}

bool BBSocket::Accept(){
	if( WaitForSingleObjectEx( _acceptSema,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return false;
	_accepted=_acceptQueue[_acceptGet & 255];
	_acceptQueue[_acceptGet++ & 255]=nullptr;
	return true;
}

BBSocket *BBSocket::Accepted(){
	BBSocket *socket=new BBSocket();
	if( socket->Open( _accepted ) ) return socket;
	return 0;
}

void BBSocket::OnConnectionReceived( StreamSocketListener ^listener,StreamSocketListenerConnectionReceivedEventArgs ^args ){

	_acceptQueue[_acceptPut++ & 255]=args->Socket;
	ReleaseSemaphore( _acceptSema,1,0 );
}

void BBSocket::OnMessageReceived( DatagramSocket ^socket,DatagramSocketMessageReceivedEventArgs ^args ){

	_recvQueue[_recvPut++ & 255]=args;
	ReleaseSemaphore( _recvSema,1,0 );
}

bool BBSocket::Connect( String host,int port ){

	auto hostname=ref new HostName( host.ToWinRTString() );
	auto service=String( port ).ToWinRTString();

	if( _stream ){

		if( !Wait( _stream->ConnectAsync( hostname,service ) ) ) return false;
		
		_reader=ref new DataReader( _stream->InputStream );
		_reader->InputStreamOptions=InputStreamOptions::Partial;

		_writer=ref new DataWriter( _stream->OutputStream );
	
		return true;
		
	}else if( _datagram ) {
	
		if( !Wait( _datagram->ConnectAsync( hostname,service ) ) ) return false;
		
		_writer=ref new DataWriter( _datagram->OutputStream );
		
		return true;
	}
}

int BBSocket::Send( BBDataBuffer *data,int offset,int count ){

	if( !_writer ) return 0;

	const unsigned char *p=(const unsigned char*)data->ReadPointer( offset );
	
	_writer->WriteBytes( Platform::ArrayReference<uint8>( (uint8*)p,count ) );
	auto op=_writer->StoreAsync();
	op->Completed=_sendhandler;
	
	if( WaitForSingleObjectEx( _wevent,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return 0;

//	if( op->Status!=AsyncStatus::Completed ) return 0;
	
	return count;
}

void BBSocket::OnSendComplete( IAsyncOperation<unsigned int> ^op,AsyncStatus status ){

	SetEvent( _wevent );
}

int BBSocket::Receive( BBDataBuffer *data,int offset,int count ){

	if( _stream ){
	
		auto op=_reader->LoadAsync( count );
		op->Completed=_recvhandler;
	
		if( WaitForSingleObjectEx( _revent,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return 0;
		
	//	if( op->Status!=AsyncStatus::Completed ) return 0;
		
		int n=_reader->UnconsumedBufferLength;
			
		_reader->ReadBytes( Platform::ArrayReference<uint8>( (uint8*)data->WritePointer( offset ),n ) );
	
		return n;
		
	}else if( _datagram ){

		if( WaitForSingleObjectEx( _recvSema,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return 0;
		
		auto recvArgs=_recvQueue[_recvGet & 255];
		_recvQueue[_recvGet++ & 255]=nullptr;
		
		auto reader=recvArgs->GetDataReader();
		int n=reader->UnconsumedBufferLength;
		if( n>count ) n=count;

		reader->ReadBytes( Platform::ArrayReference<uint8>( (uint8*)data->WritePointer( offset ),n ) );
		
		return n;
	}
	return 0;
}

void BBSocket::OnReceiveComplete( IAsyncOperation<unsigned int> ^op,AsyncStatus status ){

	SetEvent( _revent );
}

int BBSocket::SendTo( BBDataBuffer *data,int offset,int count,BBSocketAddress *address ){

	auto it=_sendToMap.find( *address );
	
	if( it==_sendToMap.end() ){
	
		auto op=_datagram->GetOutputStreamAsync( address->hostname,address->service );
		op->Completed=_getouthandler;
		
		if( WaitForSingleObjectEx( _wevent,INFINITE,FALSE )!=WAIT_OBJECT_0 || op->Status!=AsyncStatus::Completed ){
			bbPrint( "GetOutputStream failed" );
			return 0;
		}	
		it=_sendToMap.insert( std::make_pair( *address,ref new DataWriter( op->GetResults() ) ) ).first;
	}

	auto writer=it->second;

	writer->WriteBytes( Platform::ArrayReference<uint8>( (uint8*)data->ReadPointer( offset ),count ) );
	auto op=writer->StoreAsync();
	op->Completed=_sendhandler;
	
	if( WaitForSingleObjectEx( _wevent,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return 0;

//	if( op->Status!=AsyncStatus::Completed ) return 0;
	
	return count;
}

void BBSocket::OnGetOutputStreamComplete( IAsyncOperation<IOutputStream^> ^op,AsyncStatus status ){

	SetEvent( _wevent );
}

int BBSocket::ReceiveFrom( BBDataBuffer *data,int offset,int count,BBSocketAddress *address ){

	if( !_datagram ) return 0;
	
	if( WaitForSingleObjectEx( _recvSema,INFINITE,FALSE )!=WAIT_OBJECT_0 ) return 0;
	
	auto recvArgs=_recvQueue[_recvGet & 255];
	_recvQueue[_recvGet++ & 255]=nullptr;
	
	auto reader=recvArgs->GetDataReader();
	int n=reader->UnconsumedBufferLength;
	if( n>count ) n=count;

	reader->ReadBytes( Platform::ArrayReference<uint8>( (uint8*)data->WritePointer( offset ),n ) );

	address->hostname=recvArgs->RemoteAddress;
	address->service=recvArgs->RemotePort;
	
	return n;
}
	
void BBSocket::GetLocalAddress( BBSocketAddress *address ){
	if( _stream ){
		address->hostname=_stream->Information->LocalAddress;
		address->service=_stream->Information->LocalPort;
	}else if( _server ){
		address->hostname=nullptr;
		address->service=_server->Information->LocalPort;
	}else if( _datagram ){
		address->hostname=_datagram->Information->LocalAddress;
		address->service=_datagram->Information->LocalPort;
	}
}

void BBSocket::GetRemoteAddress( BBSocketAddress *address ){
	if( _stream ){
		address->hostname=_stream->Information->RemoteAddress;
		address->service=_stream->Information->RemotePort;
	}else if( _server ){
		address->hostname=nullptr;
		address->service=nullptr;
	}else if( _datagram ){
		address->hostname=_datagram->Information->RemoteAddress;
		address->service=_datagram->Information->RemotePort;
	}
}

#endif

class c_App;
class c_Game_app;
class c_GameDelegate;
class c_Image;
class c_GraphicsContext;
class c_Frame;
class c_InputDevice;
class c_JoyState;
class c_DisplayMode;
class c_Map;
class c_IntMap;
class c_Stack;
class c_Node;
class c_BBGameEvent;
class c_BaseCharacters;
class c_Timer;
class c_CollisionReader;
class c_Stream;
class c_FileStream;
class c_DataBuffer;
class c_StreamError;
class c_StreamReadError;
class c_Stack2;
class c_Enumerator;
class c_MenuCreator;
class c_Sound;
class c_Jennid;
class c_App : public Object{
	public:
	c_App();
	c_App* m_new();
	int p_OnResize();
	virtual int p_OnCreate();
	int p_OnSuspend();
	int p_OnResume();
	virtual int p_OnUpdate();
	int p_OnLoading();
	virtual int p_OnRender();
	int p_OnClose();
	int p_OnBack();
	void mark();
	String debug();
};
String dbg_type(c_App**p){return "App";}
class c_Game_app : public c_App{
	public:
	c_Image* m_BackgroundImage;
	String m_Map1;
	String m_Map2;
	String m_Map3;
	String m_SelectedMap;
	String m_SelectedPlayerP1;
	String m_SelectedPlayerP2;
	String m_PlayerName;
	c_CollisionReader* m_Collision;
	c_BaseCharacters* m_P1;
	c_BaseCharacters* m_P2;
	c_Image* m_CharacterP1;
	c_Image* m_CharacterP2;
	c_Image* m_ImageStrip1;
	c_Image* m_ImageStrip2;
	c_Image* m_ImageStrip3;
	c_Image* m_ImageStrip4;
	c_Image* m_ImageStrip5;
	c_MenuCreator* m_Menu;
	c_Image* m_LoadingB;
	c_Timer* m_Delay;
	String m_ToState;
	String m_GameState;
	c_Image* m_ImageSheet;
	c_Image* m_CurrentStrip;
	c_Sound* m_Welcome;
	c_Sound* m_Nbidia;
	int m_Stage;
	int m_Counter;
	bool m_Toggle;
	bool m_DeveloperMode;
	int m_FrameRate;
	int m_Output;
	c_Game_app();
	c_Game_app* m_new();
	void p_FlushVariables(String);
	int p_OnCreate();
	static Array<Array<String > > m_MapGrid;
	void p_LoadFiles(String);
	static int m_AttackAlgorithm(Array<Array<String > >,Float,Float,String,Float,Float,int,int);
	int p_OnUpdate();
	int p_CalculateFrameRate();
	int p_OnRender();
	void mark();
	String debug();
};
String dbg_type(c_Game_app**p){return "Game_app";}
extern c_App* bb_app__app;
class c_GameDelegate : public BBGameDelegate{
	public:
	gxtkGraphics* m__graphics;
	gxtkAudio* m__audio;
	c_InputDevice* m__input;
	c_GameDelegate();
	c_GameDelegate* m_new();
	void StartGame();
	void SuspendGame();
	void ResumeGame();
	void UpdateGame();
	void RenderGame();
	void KeyEvent(int,int);
	void MouseEvent(int,int,Float,Float);
	void TouchEvent(int,int,Float,Float);
	void MotionEvent(int,int,Float,Float,Float);
	void DiscardGraphics();
	void mark();
	String debug();
};
String dbg_type(c_GameDelegate**p){return "GameDelegate";}
extern c_GameDelegate* bb_app__delegate;
extern BBGame* bb_app__game;
extern c_Game_app* bb_Test_Game;
int bbMain();
extern gxtkGraphics* bb_graphics_device;
int bb_graphics_SetGraphicsDevice(gxtkGraphics*);
class c_Image : public Object{
	public:
	gxtkSurface* m_surface;
	int m_width;
	int m_height;
	Array<c_Frame* > m_frames;
	int m_flags;
	Float m_tx;
	Float m_ty;
	c_Image* m_source;
	c_Image();
	static int m_DefaultFlags;
	c_Image* m_new();
	int p_SetHandle(Float,Float);
	int p_ApplyFlags(int);
	c_Image* p_Init(gxtkSurface*,int,int);
	c_Image* p_Init2(gxtkSurface*,int,int,int,int,int,int,c_Image*,int,int,int,int);
	c_Image* p_GrabImage(int,int,int,int,int,int);
	int p_Frames();
	int p_Width();
	int p_Height();
	void mark();
	String debug();
};
String dbg_type(c_Image**p){return "Image";}
class c_GraphicsContext : public Object{
	public:
	c_Image* m_defaultFont;
	c_Image* m_font;
	int m_firstChar;
	int m_matrixSp;
	Float m_ix;
	Float m_iy;
	Float m_jx;
	Float m_jy;
	Float m_tx;
	Float m_ty;
	int m_tformed;
	int m_matDirty;
	Float m_color_r;
	Float m_color_g;
	Float m_color_b;
	Float m_alpha;
	int m_blend;
	Float m_scissor_x;
	Float m_scissor_y;
	Float m_scissor_width;
	Float m_scissor_height;
	Array<Float > m_matrixStack;
	c_GraphicsContext();
	c_GraphicsContext* m_new();
	int p_Validate();
	void mark();
	String debug();
};
String dbg_type(c_GraphicsContext**p){return "GraphicsContext";}
extern c_GraphicsContext* bb_graphics_context;
String bb_data_FixDataPath(String);
class c_Frame : public Object{
	public:
	int m_x;
	int m_y;
	c_Frame();
	c_Frame* m_new(int,int);
	c_Frame* m_new2();
	void mark();
	String debug();
};
String dbg_type(c_Frame**p){return "Frame";}
c_Image* bb_graphics_LoadImage(String,int,int);
c_Image* bb_graphics_LoadImage2(String,int,int,int,int);
int bb_graphics_SetFont(c_Image*,int);
extern gxtkAudio* bb_audio_device;
int bb_audio_SetAudioDevice(gxtkAudio*);
class c_InputDevice : public Object{
	public:
	Array<c_JoyState* > m__joyStates;
	Array<bool > m__keyDown;
	int m__keyHitPut;
	Array<int > m__keyHitQueue;
	Array<int > m__keyHit;
	int m__charGet;
	int m__charPut;
	Array<int > m__charQueue;
	Float m__mouseX;
	Float m__mouseY;
	Array<Float > m__touchX;
	Array<Float > m__touchY;
	Float m__accelX;
	Float m__accelY;
	Float m__accelZ;
	c_InputDevice();
	c_InputDevice* m_new();
	void p_PutKeyHit(int);
	void p_BeginUpdate();
	void p_EndUpdate();
	void p_KeyEvent(int,int);
	void p_MouseEvent(int,int,Float,Float);
	void p_TouchEvent(int,int,Float,Float);
	void p_MotionEvent(int,int,Float,Float,Float);
	int p_KeyHit(int);
	bool p_KeyDown(int);
	void mark();
	String debug();
};
String dbg_type(c_InputDevice**p){return "InputDevice";}
class c_JoyState : public Object{
	public:
	Array<Float > m_joyx;
	Array<Float > m_joyy;
	Array<Float > m_joyz;
	Array<bool > m_buttons;
	c_JoyState();
	c_JoyState* m_new();
	void mark();
	String debug();
};
String dbg_type(c_JoyState**p){return "JoyState";}
extern c_InputDevice* bb_input_device;
int bb_input_SetInputDevice(c_InputDevice*);
extern int bb_app__devWidth;
extern int bb_app__devHeight;
void bb_app_ValidateDeviceWindow(bool);
class c_DisplayMode : public Object{
	public:
	int m__width;
	int m__height;
	c_DisplayMode();
	c_DisplayMode* m_new(int,int);
	c_DisplayMode* m_new2();
	void mark();
	String debug();
};
String dbg_type(c_DisplayMode**p){return "DisplayMode";}
class c_Map : public Object{
	public:
	c_Node* m_root;
	c_Map();
	c_Map* m_new();
	virtual int p_Compare(int,int)=0;
	c_Node* p_FindNode(int);
	bool p_Contains(int);
	int p_RotateLeft(c_Node*);
	int p_RotateRight(c_Node*);
	int p_InsertFixup(c_Node*);
	bool p_Set(int,c_DisplayMode*);
	bool p_Insert(int,c_DisplayMode*);
	void mark();
	String debug();
};
String dbg_type(c_Map**p){return "Map";}
class c_IntMap : public c_Map{
	public:
	c_IntMap();
	c_IntMap* m_new();
	int p_Compare(int,int);
	void mark();
	String debug();
};
String dbg_type(c_IntMap**p){return "IntMap";}
class c_Stack : public Object{
	public:
	Array<c_DisplayMode* > m_data;
	int m_length;
	c_Stack();
	c_Stack* m_new();
	c_Stack* m_new2(Array<c_DisplayMode* >);
	void p_Push(c_DisplayMode*);
	void p_Push2(Array<c_DisplayMode* >,int,int);
	void p_Push3(Array<c_DisplayMode* >,int);
	Array<c_DisplayMode* > p_ToArray();
	void mark();
	String debug();
};
String dbg_type(c_Stack**p){return "Stack";}
class c_Node : public Object{
	public:
	int m_key;
	c_Node* m_right;
	c_Node* m_left;
	c_DisplayMode* m_value;
	int m_color;
	c_Node* m_parent;
	c_Node();
	c_Node* m_new(int,c_DisplayMode*,int,c_Node*);
	c_Node* m_new2();
	void mark();
	String debug();
};
String dbg_type(c_Node**p){return "Node";}
extern Array<c_DisplayMode* > bb_app__displayModes;
extern c_DisplayMode* bb_app__desktopMode;
int bb_app_DeviceWidth();
int bb_app_DeviceHeight();
void bb_app_EnumDisplayModes();
extern gxtkGraphics* bb_graphics_renderDevice;
int bb_graphics_SetMatrix(Float,Float,Float,Float,Float,Float);
int bb_graphics_SetMatrix2(Array<Float >);
int bb_graphics_SetColor(Float,Float,Float);
int bb_graphics_SetAlpha(Float);
int bb_graphics_SetBlend(int);
int bb_graphics_SetScissor(Float,Float,Float,Float);
int bb_graphics_BeginRender();
int bb_graphics_EndRender();
class c_BBGameEvent : public Object{
	public:
	c_BBGameEvent();
	void mark();
	String debug();
};
String dbg_type(c_BBGameEvent**p){return "BBGameEvent";}
void bb_app_EndApp();
class c_BaseCharacters : public Object{
	public:
	c_Timer* m_AnimationDelay;
	c_Timer* m_CommandDelay;
	Array<Array<String > > m_BAttackGrid;
	Array<Array<String > > m_SAttackGrid;
	c_Image* m_SpriteSheet;
	c_Image* m_StandSprite;
	c_Image* m_RunningSprite;
	c_Image* m_BAttackSprite;
	c_Image* m_TauntSprite;
	c_Image* m_Sprite;
	int m_W;
	int m_H;
	int m_LeftFoot;
	int m_RightFoot;
	Float m_x;
	Float m_y;
	String m_Direction;
	String m_Action;
	int m_LeftBind;
	int m_RightBind;
	int m_UpBind;
	int m_DownBind;
	int m_JumpBind;
	int m_BAttackBind;
	int m_TauntBind;
	int m_FrameCounter;
	int m_pcX1;
	int m_pcY1;
	int m_pcX2;
	int m_pcY2;
	bool m_Ground;
	bool m_LockR;
	bool m_LockL;
	int m_TotalJumps;
	int m_JumpCounter;
	int m_GravityAcc;
	bool m_Attacking;
	int m_Speed;
	int m_JumpSpeed;
	int m_PreviousY;
	bool m_Touched;
	int m_JumpLimit;
	bool m_Jumping;
	String m_AttackType;
	bool m_AttackCooldown;
	int m_Health;
	c_BaseCharacters();
	c_BaseCharacters* m_new();
	int p_UpdateAction();
	int p_AnimationCycle();
	void p_PlayerCollisionCheck();
	int p_Gravity(int);
	void p_KeyBinds();
	void p_Jump();
	int p_ToggleAttackCheckOff();
	int p_AttackCldwn();
	int p_OnDmgTaken();
	int p_Death();
	void mark();
	String debug();
};
String dbg_type(c_BaseCharacters**p){return "BaseCharacters";}
class c_Timer : public Object{
	public:
	Float m_TimeAnimation;
	Float m_i;
	Float m_TimeCommand;
	Float m_TimeCommand2;
	c_Timer();
	c_Timer* m_new();
	int p_DelayAnimation(int);
	int p_DelayCommand(int);
	int p_DelayCommand2(int);
	void mark();
	String debug();
};
String dbg_type(c_Timer**p){return "Timer";}
class c_CollisionReader : public Object{
	public:
	c_Image* m_CollisionBlock;
	c_Image* m_BackgroundBlock;
	c_CollisionReader();
	int p_Load(String,Array<Array<String > >,int,int);
	c_CollisionReader* m_new();
	int p_Draw(Array<Array<String > >,int,int,int,int,int);
	void mark();
	String debug();
};
String dbg_type(c_CollisionReader**p){return "CollisionReader";}
class c_Stream : public Object{
	public:
	c_Stream();
	c_Stream* m_new();
	virtual int p_Read(c_DataBuffer*,int,int)=0;
	void p_ReadError();
	void p_ReadAll(c_DataBuffer*,int,int);
	c_DataBuffer* p_ReadAll2();
	String p_ReadString(int,String);
	String p_ReadString2(String);
	virtual void p_Close()=0;
	void mark();
	String debug();
};
String dbg_type(c_Stream**p){return "Stream";}
class c_FileStream : public c_Stream{
	public:
	BBFileStream* m__stream;
	c_FileStream();
	static BBFileStream* m_OpenStream(String,String);
	c_FileStream* m_new(String,String);
	c_FileStream* m_new2(BBFileStream*);
	c_FileStream* m_new3();
	static c_FileStream* m_Open(String,String);
	void p_Close();
	int p_Read(c_DataBuffer*,int,int);
	void mark();
	String debug();
};
String dbg_type(c_FileStream**p){return "FileStream";}
class c_DataBuffer : public BBDataBuffer{
	public:
	c_DataBuffer();
	c_DataBuffer* m_new(int);
	c_DataBuffer* m_new2();
	void p_CopyBytes(int,c_DataBuffer*,int,int);
	void p_PeekBytes(int,Array<int >,int,int);
	Array<int > p_PeekBytes2(int,int);
	String p_PeekString(int,int,String);
	String p_PeekString2(int,String);
	void mark();
	String debug();
};
String dbg_type(c_DataBuffer**p){return "DataBuffer";}
class c_StreamError : public ThrowableObject{
	public:
	c_Stream* m__stream;
	c_StreamError();
	c_StreamError* m_new(c_Stream*);
	c_StreamError* m_new2();
	void mark();
	String debug();
};
String dbg_type(c_StreamError**p){return "StreamError";}
class c_StreamReadError : public c_StreamError{
	public:
	c_StreamReadError();
	c_StreamReadError* m_new(c_Stream*);
	c_StreamReadError* m_new2();
	void mark();
	String debug();
};
String dbg_type(c_StreamReadError**p){return "StreamReadError";}
class c_Stack2 : public Object{
	public:
	Array<c_DataBuffer* > m_data;
	int m_length;
	c_Stack2();
	c_Stack2* m_new();
	c_Stack2* m_new2(Array<c_DataBuffer* >);
	void p_Push4(c_DataBuffer*);
	void p_Push5(Array<c_DataBuffer* >,int,int);
	void p_Push6(Array<c_DataBuffer* >,int);
	c_Enumerator* p_ObjectEnumerator();
	static c_DataBuffer* m_NIL;
	void p_Length(int);
	int p_Length2();
	void mark();
	String debug();
};
String dbg_type(c_Stack2**p){return "Stack";}
class c_Enumerator : public Object{
	public:
	c_Stack2* m_stack;
	int m_index;
	c_Enumerator();
	c_Enumerator* m_new(c_Stack2*);
	c_Enumerator* m_new2();
	bool p_HasNext();
	c_DataBuffer* p_NextObject();
	void mark();
	String debug();
};
String dbg_type(c_Enumerator**p){return "Enumerator";}
int bb_math_Max(int,int);
Float bb_math_Max2(Float,Float);
class c_MenuCreator : public Object{
	public:
	int m_Height;
	c_Image* m_MenuImage;
	int m_Width;
	int m_xM;
	int m_yM;
	Array<Array<String > > m_MenuPoscition;
	c_Timer* m_Delay;
	int m_AnimationFrame;
	c_MenuCreator();
	c_MenuCreator* m_new();
	int p_CreateArray();
	int p_AnimationCycle();
	int p_MenuButtons();
	int p_Enter();
	void mark();
	String debug();
};
String dbg_type(c_MenuCreator**p){return "MenuCreator";}
extern int bb_app__updateRate;
void bb_app_SetUpdateRate(int);
class c_Sound : public Object{
	public:
	gxtkSample* m_sample;
	c_Sound();
	c_Sound* m_new(gxtkSample*);
	c_Sound* m_new2();
	void mark();
	String debug();
};
String dbg_type(c_Sound**p){return "Sound";}
c_Sound* bb_audio_LoadSound(String);
class c_Jennid : public c_BaseCharacters{
	public:
	c_Jennid();
	c_Jennid* m_new();
	void mark();
	String debug();
};
String dbg_type(c_Jennid**p){return "Jennid";}
int bb_input_KeyHit(int);
int bb_audio_ChannelState(int);
int bb_audio_PlaySound(c_Sound*,int,int);
int bb_app_Millisecs();
int bb_audio_MusicState();
int bb_audio_PlayMusic(String,int);
int bb_input_KeyDown(int);
int bb_graphics_DebugRenderDevice();
int bb_graphics_Cls(Float,Float,Float);
int bb_graphics_DrawImage(c_Image*,Float,Float,int);
int bb_graphics_PushMatrix();
int bb_graphics_Transform(Float,Float,Float,Float,Float,Float);
int bb_graphics_Transform2(Array<Float >);
int bb_graphics_Translate(Float,Float);
int bb_graphics_Rotate(Float);
int bb_graphics_Scale(Float,Float);
int bb_graphics_PopMatrix();
int bb_graphics_DrawImage2(c_Image*,Float,Float,Float,Float,Float,int);
int bb_graphics_DrawText(String,Float,Float,Float,Float);
int bb_graphics_DrawRect(Float,Float,Float,Float);
void gc_mark( BBGame *p ){}
String dbg_type( BBGame **p ){ return "BBGame"; }
String dbg_value( BBGame **p ){ return dbg_ptr_value( *p ); }
c_App::c_App(){
}
c_App* c_App::m_new(){
	DBG_ENTER("App.new")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<152>");
	if((bb_app__app)!=0){
		DBG_BLOCK();
		bbError(String(L"App has already been created",28));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<153>");
	gc_assign(bb_app__app,this);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<154>");
	gc_assign(bb_app__delegate,(new c_GameDelegate)->m_new());
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<155>");
	bb_app__game->SetDelegate(bb_app__delegate);
	return this;
}
int c_App::p_OnResize(){
	DBG_ENTER("App.OnResize")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnCreate(){
	DBG_ENTER("App.OnCreate")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnSuspend(){
	DBG_ENTER("App.OnSuspend")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnResume(){
	DBG_ENTER("App.OnResume")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnUpdate(){
	DBG_ENTER("App.OnUpdate")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnLoading(){
	DBG_ENTER("App.OnLoading")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnRender(){
	DBG_ENTER("App.OnRender")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	return 0;
}
int c_App::p_OnClose(){
	DBG_ENTER("App.OnClose")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<177>");
	bb_app_EndApp();
	return 0;
}
int c_App::p_OnBack(){
	DBG_ENTER("App.OnBack")
	c_App *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<181>");
	p_OnClose();
	return 0;
}
void c_App::mark(){
	Object::mark();
}
String c_App::debug(){
	String t="(App)\n";
	return t;
}
c_Game_app::c_Game_app(){
	m_BackgroundImage=0;
	m_Map1=String();
	m_Map2=String();
	m_Map3=String();
	m_SelectedMap=String();
	m_SelectedPlayerP1=String();
	m_SelectedPlayerP2=String();
	m_PlayerName=String();
	m_Collision=0;
	m_P1=0;
	m_P2=0;
	m_CharacterP1=0;
	m_CharacterP2=0;
	m_ImageStrip1=0;
	m_ImageStrip2=0;
	m_ImageStrip3=0;
	m_ImageStrip4=0;
	m_ImageStrip5=0;
	m_Menu=0;
	m_LoadingB=0;
	m_Delay=0;
	m_ToState=String();
	m_GameState=String();
	m_ImageSheet=0;
	m_CurrentStrip=0;
	m_Welcome=0;
	m_Nbidia=0;
	m_Stage=1;
	m_Counter=0;
	m_Toggle=true;
	m_DeveloperMode=false;
	m_FrameRate=0;
	m_Output=0;
}
c_Game_app* c_Game_app::m_new(){
	DBG_ENTER("Game_app.new")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<18>");
	c_App::m_new();
	return this;
}
void c_Game_app::p_FlushVariables(String t_What){
	DBG_ENTER("Game_app.FlushVariables")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_What,"What")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<811>");
	String t_14=t_What;
	DBG_LOCAL(t_14,"14")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<814>");
	if(t_14==String(L"All",3)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<819>");
		m_BackgroundImage=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<820>");
		m_Map1=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<821>");
		m_Map2=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<822>");
		m_Map3=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<826>");
		m_SelectedMap=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<827>");
		m_SelectedPlayerP1=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<828>");
		m_SelectedPlayerP2=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<829>");
		m_PlayerName=String();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<831>");
		gc_assign(m_P1,(new c_BaseCharacters)->m_new());
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<832>");
		gc_assign(m_P2,(new c_BaseCharacters)->m_new());
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<834>");
		m_CharacterP1=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<835>");
		m_CharacterP2=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<836>");
		m_ImageStrip1=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<837>");
		m_ImageStrip2=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<838>");
		m_ImageStrip3=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<839>");
		m_ImageStrip4=0;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<840>");
		m_ImageStrip5=0;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<844>");
		if(t_14==String(L"Time",4)){
			DBG_BLOCK();
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<847>");
			if(t_14==String(L"MainMenu",8)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<849>");
				m_Menu->m_Height=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<850>");
				m_Menu->m_MenuImage=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<851>");
				m_Menu->m_Width=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<852>");
				m_Menu->m_xM=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<853>");
				m_Menu->m_yM=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<854>");
				gc_assign(m_Menu->m_MenuPoscition,Array<Array<String > >(0));
			}
		}
	}
}
int c_Game_app::p_OnCreate(){
	DBG_ENTER("Game_app.OnCreate")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<90>");
	p_FlushVariables(String(L"All",3));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<91>");
	gc_assign(m_LoadingB,bb_graphics_LoadImage(String(L"Loading.png",11),1,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<92>");
	gc_assign(m_Delay,(new c_Timer)->m_new());
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<93>");
	m_ToState=String(L"Opening",7);
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<94>");
	m_GameState=String(L"Loading",7);
	return 0;
}
Array<Array<String > > c_Game_app::m_MapGrid;
void c_Game_app::p_LoadFiles(String t_Where){
	DBG_ENTER("Game_app.LoadFiles")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_Where,"Where")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<593>");
	String t_11=t_Where;
	DBG_LOCAL(t_11,"11")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<597>");
	if(t_11==String(L"Opening",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<598>");
		bb_app_SetUpdateRate(60);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<600>");
		gc_assign(m_ImageSheet,bb_graphics_LoadImage(String(L"NAnimation.png",14),1,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<602>");
		gc_assign(m_ImageStrip1,m_ImageSheet->p_GrabImage(0,0,592,538,6,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<604>");
		gc_assign(m_ImageStrip2,m_ImageSheet->p_GrabImage(0,538,363,219,11,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<606>");
		gc_assign(m_ImageSheet,bb_graphics_LoadImage(String(L"RankAnimation.png",17),1,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<607>");
		gc_assign(m_ImageStrip3,m_ImageSheet->p_GrabImage(0,0,1280,720,2,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<609>");
		gc_assign(m_ImageStrip4,m_ImageSheet->p_GrabImage(0,720,1280,720,2,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<612>");
		gc_assign(m_ImageStrip5,m_ImageSheet->p_GrabImage(0,1440,1280,720,2,c_Image::m_DefaultFlags));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<613>");
		gc_assign(m_CurrentStrip,m_ImageSheet);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<615>");
		gc_assign(m_Welcome,bb_audio_LoadSound(String(L"Welcome.wav",11)));
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<616>");
		if(t_11==String(L"MainMenu",8)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<619>");
			p_FlushVariables(String(L"All",3));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<621>");
			bb_app_SetUpdateRate(60);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<625>");
			gc_assign(m_BackgroundImage,bb_graphics_LoadImage(String(L"MainMenuBackground.png",22),1,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<626>");
			gc_assign(m_ImageSheet,bb_graphics_LoadImage(String(L"MainMenuSheet.png",17),1,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<628>");
			gc_assign(m_ImageStrip1,m_ImageSheet->p_GrabImage(0,0,260,86,2,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<629>");
			gc_assign(m_ImageStrip2,m_ImageSheet->p_GrabImage(0,86,260,86,2,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<630>");
			gc_assign(m_ImageStrip3,m_ImageSheet->p_GrabImage(0,172,260,86,2,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<631>");
			gc_assign(m_ImageStrip4,m_ImageSheet->p_GrabImage(0,258,260,86,2,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<632>");
			gc_assign(m_ImageStrip5,m_ImageSheet->p_GrabImage(0,344,260,86,2,c_Image::m_DefaultFlags));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<634>");
			gc_assign(m_Menu,(new c_MenuCreator)->m_new());
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<636>");
			gc_assign(m_Menu->m_MenuImage,m_ImageStrip1);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<638>");
			m_Menu->m_Height=5;
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<639>");
			m_Menu->m_Width=1;
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<641>");
			m_Menu->p_CreateArray();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<646>");
			m_Menu->m_MenuPoscition.At(0).At(0)=String(L"NewGame",7);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<647>");
			m_Menu->m_MenuPoscition.At(0).At(1)=String(L"LoadGame",8);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<648>");
			m_Menu->m_MenuPoscition.At(0).At(2)=String(L"Settings",8);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<649>");
			m_Menu->m_MenuPoscition.At(0).At(3)=String(L"About",5);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<650>");
			m_Menu->m_MenuPoscition.At(0).At(4)=String(L"Exit",4);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<659>");
			gc_assign(m_Nbidia,bb_audio_LoadSound(String(L"Nbidia.wav",10)));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<661>");
			m_GameState=String(L"MainMenu",8);
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<664>");
			if(t_11==String(L"CharacterSelect",15)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<666>");
				p_FlushVariables(String(L"MainMenu",8));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<667>");
				gc_assign(m_ImageSheet,bb_graphics_LoadImage(String(L"CharacterSelectSheet.png",24),1,c_Image::m_DefaultFlags));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<669>");
				gc_assign(m_ImageStrip1,m_ImageSheet->p_GrabImage(0,0,325,419,4,c_Image::m_DefaultFlags));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<670>");
				gc_assign(m_ImageStrip2,m_ImageSheet->p_GrabImage(755,419,58,84,2,c_Image::m_DefaultFlags));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<671>");
				gc_assign(m_ImageStrip3,m_ImageSheet->p_GrabImage(755,503,58,84,2,c_Image::m_DefaultFlags));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<672>");
				gc_assign(m_ImageStrip4,m_ImageSheet->p_GrabImage(0,419,725,720,1,c_Image::m_DefaultFlags));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<674>");
				gc_assign(m_BackgroundImage,bb_graphics_LoadImage(String(L"CSBackground.png",16),1,c_Image::m_DefaultFlags));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<680>");
				m_Menu->m_Height=1;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<681>");
				m_Menu->m_Width=4;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<683>");
				m_Menu->p_CreateArray();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<688>");
				m_Menu->m_MenuPoscition.At(0).At(0)=String(L"P1Char1",7);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<689>");
				m_Menu->m_MenuPoscition.At(1).At(0)=String(L"P1Char2",7);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<690>");
				m_Menu->m_MenuPoscition.At(2).At(0)=String(L"P1Char3",7);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<691>");
				m_Menu->m_MenuPoscition.At(3).At(0)=String(L"P1Char4",7);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<692>");
				m_Menu->m_xM=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<693>");
				m_Menu->m_yM=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<697>");
				gc_assign(m_Menu->m_MenuImage,m_ImageStrip2);
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<699>");
				if(t_11==String(L"Settings",8)){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<701>");
					gc_assign(m_BackgroundImage,bb_graphics_LoadImage(String(L"Unavailable.png",15),1,c_Image::m_DefaultFlags));
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<703>");
					if(t_11==String(L"About",5)){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<705>");
						gc_assign(m_BackgroundImage,bb_graphics_LoadImage(String(L"AboutBackground.png",19),1,c_Image::m_DefaultFlags));
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<706>");
						gc_assign(m_ImageSheet,bb_graphics_LoadImage(String(L"AboutSheet.png",14),1,c_Image::m_DefaultFlags));
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<709>");
						gc_assign(m_ImageStrip2,m_ImageSheet->p_GrabImage(0,0,569,294,1,c_Image::m_DefaultFlags));
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<710>");
						gc_assign(m_ImageStrip1,m_ImageSheet->p_GrabImage(0,294,569,382,1,c_Image::m_DefaultFlags));
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<711>");
						gc_assign(m_ImageStrip3,m_ImageStrip1);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<713>");
						gc_assign(m_P1,((new c_Jennid)->m_new()));
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<714>");
						gc_assign(m_P2,((new c_Jennid)->m_new()));
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<715>");
						m_P1->m_x=FLOAT(320.0);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<716>");
						m_P2->m_x=FLOAT(780.0);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<717>");
						m_P1->m_y=FLOAT(90.0);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<718>");
						m_P2->m_y=FLOAT(90.0);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<719>");
						m_P2->m_Direction=String(L"Left",4);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<720>");
						m_P1->m_Action=String(L"Taunt",5);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<721>");
						m_P2->m_Action=String(L"Taunt",5);
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<723>");
						if(t_11==String(L"Game",4)){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<725>");
							p_FlushVariables(String(L"MainMenu",8));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<726>");
							bb_app_SetUpdateRate(60);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<730>");
							for(int t_i=0;t_i<=32;t_i=t_i+1){
								DBG_BLOCK();
								DBG_LOCAL(t_i,"i")
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<731>");
								gc_assign(m_MapGrid.At(t_i),Array<String >(19));
							}
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<737>");
							gc_assign(m_BackgroundImage,bb_graphics_LoadImage(String(L"Arena.png",9),1,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<742>");
							m_Map1=String(L"monkey://data/Map1.txt",22);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<743>");
							m_Map2=String(L"monkey://data/Map2.txt",22);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<744>");
							m_Map3=String(L"monkey://data/Map3.txt",22);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<746>");
							m_SelectedMap=m_Map1;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<748>");
							gc_assign(m_Collision,(new c_CollisionReader)->m_new());
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<749>");
							m_Collision->p_Load(m_SelectedMap,m_MapGrid,32,18);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<753>");
							String t_12=m_SelectedPlayerP1;
							DBG_LOCAL(t_12,"12")
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<754>");
							if(t_12==String(L"Jennid",6)){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<755>");
								gc_assign(m_P1,((new c_Jennid)->m_new()));
							}else{
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<756>");
								if(t_12==String(L"Nor",3)){
									DBG_BLOCK();
								}
							}
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<760>");
							String t_13=m_SelectedPlayerP1;
							DBG_LOCAL(t_13,"13")
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<761>");
							if(t_13==String(L"Jennid",6)){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<762>");
								gc_assign(m_P2,((new c_Jennid)->m_new()));
							}else{
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<763>");
								if(t_13==String(L"Nor",3)){
									DBG_BLOCK();
								}
							}
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<769>");
							m_P1->m_LeftBind=65;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<770>");
							m_P1->m_RightBind=68;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<771>");
							m_P1->m_UpBind=87;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<772>");
							m_P1->m_DownBind=83;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<773>");
							m_P1->m_JumpBind=32;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<774>");
							m_P1->m_BAttackBind=85;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<775>");
							m_P1->m_TauntBind=88;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<778>");
							m_P2->m_LeftBind=37;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<779>");
							m_P2->m_RightBind=39;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<780>");
							m_P2->m_UpBind=38;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<781>");
							m_P2->m_DownBind=40;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<782>");
							m_P2->m_JumpBind=16;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<783>");
							m_P2->m_BAttackBind=80;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<784>");
							m_P2->m_TauntBind=67;
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<786>");
							m_P1->m_x=FLOAT(200.0);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<787>");
							m_P2->m_x=FLOAT(900.0);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<788>");
							m_P2->m_Direction=String(L"Left",4);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<790>");
							gc_assign(m_ImageSheet,bb_graphics_LoadImage(String(L"HudSheet.png",12),1,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<791>");
							gc_assign(m_ImageStrip1,m_ImageSheet->p_GrabImage(0,0,169,169,4,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<792>");
							gc_assign(m_ImageStrip2,m_ImageSheet->p_GrabImage(0,169,169,169,4,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<793>");
							gc_assign(m_ImageStrip3,m_ImageSheet->p_GrabImage(0,338,169,169,1,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<794>");
							gc_assign(m_ImageStrip4,m_ImageSheet->p_GrabImage(169,338,379,202,1,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<795>");
							gc_assign(m_CharacterP1,m_P1->m_SpriteSheet->p_GrabImage(0,333,139,155,1,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<796>");
							gc_assign(m_CharacterP2,m_P2->m_SpriteSheet->p_GrabImage(0,333,139,155,1,c_Image::m_DefaultFlags));
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<798>");
							m_GameState=String(L"Game",4);
						}
					}
				}
			}
		}
	}
}
int c_Game_app::m_AttackAlgorithm(Array<Array<String > > t_Grid,Float t_Qx,Float t_Qy,String t_QDirection,Float t_Ex,Float t_Ey,int t_EW,int t_EH){
	DBG_ENTER("Game_app.AttackAlgorithm")
	DBG_LOCAL(t_Grid,"Grid")
	DBG_LOCAL(t_Qx,"Qx")
	DBG_LOCAL(t_Qy,"Qy")
	DBG_LOCAL(t_QDirection,"QDirection")
	DBG_LOCAL(t_Ex,"Ex")
	DBG_LOCAL(t_Ey,"Ey")
	DBG_LOCAL(t_EW,"EW")
	DBG_LOCAL(t_EH,"EH")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<336>");
	String t_Tile=String();
	DBG_LOCAL(t_Tile,"Tile")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<338>");
	int t_x1=0;
	DBG_LOCAL(t_x1,"x1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<339>");
	int t_x2=0;
	DBG_LOCAL(t_x2,"x2")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<340>");
	int t_y1=0;
	DBG_LOCAL(t_y1,"y1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<341>");
	int t_y2=0;
	DBG_LOCAL(t_y2,"y2")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<343>");
	int t_z1=0;
	DBG_LOCAL(t_z1,"z1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<344>");
	int t_z2=0;
	DBG_LOCAL(t_z2,"z2")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<345>");
	int t_c1=0;
	DBG_LOCAL(t_c1,"c1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<346>");
	int t_c2=0;
	DBG_LOCAL(t_c2,"c2")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<349>");
	for(int t_y=0;t_y<=2;t_y=t_y+1){
		DBG_BLOCK();
		DBG_LOCAL(t_y,"y")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<350>");
		for(int t_x=0;t_x<=2;t_x=t_x+1){
			DBG_BLOCK();
			DBG_LOCAL(t_x,"x")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<351>");
			t_Tile=t_Grid.At(t_x).At(t_y);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<354>");
			if(t_QDirection==String(L"Right",5) && t_Tile==String(L"2",1)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<356>");
				t_y2=int(t_Qy+Float((t_y+1)*65));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<357>");
				t_y1=int(Float(t_y*65)+t_Qy);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<358>");
				t_x2=int(Float((t_x+1)*61)+t_Qx);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<359>");
				t_x1=int(Float(t_x*61)+t_Qx);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<361>");
				t_z2=int(t_Ey+Float(t_EW));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<362>");
				t_z1=int(t_Ey);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<363>");
				t_c2=int(t_Ex+FLOAT(30.0));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<364>");
				t_c1=int(t_Ex+Float(t_EH)-FLOAT(40.0));
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<370>");
				if(t_y2>=t_z1 && t_y2<=t_z2 || t_y1<=t_z2 && t_y1>=t_z1){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<372>");
					if(t_x2>+t_c2 && t_x2<=t_c1 || t_x1<=t_c1 && t_x1>=t_c2){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<376>");
						return 1;
					}
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<382>");
				if(t_QDirection==String(L"Left",4) && t_Tile==String(L"3",1)){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<385>");
					t_y2=int(t_Qy+Float((t_y+1)*65));
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<386>");
					t_y1=int(Float(t_y*65)+t_Qy);
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<387>");
					t_x2=int(Float((t_x+1)*61)+t_Qx);
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<388>");
					t_x1=int(Float(t_x*61)+t_Qx);
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<390>");
					t_z2=int(t_Ey+Float(t_EW));
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<391>");
					t_z1=int(t_Ey);
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<392>");
					t_c2=int(t_Ex+FLOAT(30.0));
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<393>");
					t_c1=int(t_Ex+Float(t_EH)-FLOAT(40.0));
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<399>");
					if(t_y2>=t_z1 && t_y2<=t_z2 || t_y1<=t_z2 && t_y1>=t_z1){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<401>");
						if(t_x2>+t_c2 && t_x2<=t_c1 || t_x1<=t_c1 && t_x1>=t_c2){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<405>");
							return 1;
						}
					}
				}
			}
		}
	}
	return 0;
}
int c_Game_app::p_OnUpdate(){
	DBG_ENTER("Game_app.OnUpdate")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<102>");
	String t_1=m_GameState;
	DBG_LOCAL(t_1,"1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<105>");
	if(t_1==String(L"Loading",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<111>");
		p_LoadFiles(m_ToState);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<112>");
		m_GameState=m_ToState;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<115>");
		if(t_1==String(L"Opening",7)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<117>");
			if((bb_input_KeyHit(13))!=0){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<120>");
				m_ToState=String(L"MainMenu",8);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<121>");
				m_GameState=String(L"Loading",7);
			}
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<125>");
			int t_2=m_Stage;
			DBG_LOCAL(t_2,"2")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<126>");
			if(t_2==1){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<127>");
				gc_assign(m_CurrentStrip,m_ImageStrip1);
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<128>");
				if(t_2==2){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<129>");
					gc_assign(m_CurrentStrip,m_ImageStrip2);
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<131>");
					if(t_2==3){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<132>");
						if(m_Counter==2 && bb_audio_ChannelState(0)==0){
							DBG_BLOCK();
							bb_audio_PlaySound(m_Welcome,0,0);
						}
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<133>");
						if(t_2==4){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<134>");
							gc_assign(m_CurrentStrip,m_ImageStrip3);
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<135>");
							if(t_2==5){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<136>");
								gc_assign(m_CurrentStrip,m_ImageStrip4);
							}else{
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<137>");
								if(t_2==6){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<138>");
									gc_assign(m_CurrentStrip,m_ImageStrip5);
								}else{
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<139>");
									if(t_2==7){
										DBG_BLOCK();
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<141>");
										m_ToState=String(L"MainMenu",8);
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<142>");
										m_GameState=String(L"Loading",7);
									}
								}
							}
						}
					}
				}
			}
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<145>");
			if(m_Counter!=m_CurrentStrip->p_Frames()-1 && m_Toggle){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<147>");
				if((m_Delay->p_DelayAnimation(140))!=0){
					DBG_BLOCK();
					m_Counter+=1;
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<151>");
				m_Toggle=false;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<152>");
				m_Counter=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<153>");
				m_Stage+=1;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<154>");
				m_Toggle=true;
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<160>");
			if(t_1==String(L"MainMenu",8)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<163>");
				if(bb_audio_MusicState()==0){
					DBG_BLOCK();
					bb_audio_PlayMusic(String(L"BackM.wav",9),1);
				}
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<165>");
				int t_3=m_Menu->m_yM;
				DBG_LOCAL(t_3,"3")
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<166>");
				if(t_3==0){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<167>");
					gc_assign(m_Menu->m_MenuImage,m_ImageStrip1);
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<168>");
					if(t_3==1){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<169>");
						gc_assign(m_Menu->m_MenuImage,m_ImageStrip2);
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<170>");
						if(t_3==2){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<171>");
							gc_assign(m_Menu->m_MenuImage,m_ImageStrip3);
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<172>");
							if(t_3==3){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<173>");
								gc_assign(m_Menu->m_MenuImage,m_ImageStrip4);
							}else{
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<174>");
								if(t_3==4){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<175>");
									gc_assign(m_Menu->m_MenuImage,m_ImageStrip5);
								}
							}
						}
					}
				}
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<182>");
				m_Menu->p_AnimationCycle();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<183>");
				m_Menu->p_MenuButtons();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<185>");
				if((bb_input_KeyHit(13))!=0){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<187>");
					m_Menu->p_Enter();
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<193>");
				if(t_1==String(L"CharacterSelect",15)){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<194>");
					m_Menu->p_AnimationCycle();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<195>");
					m_Menu->p_MenuButtons();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<197>");
					if((bb_input_KeyHit(13))!=0){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<199>");
						m_Menu->p_Enter();
					}
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<204>");
					if((bb_input_KeyHit(27))!=0){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<206>");
						m_ToState=String(L"MainMenu",8);
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<207>");
						m_GameState=String(L"Loading",7);
					}
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<212>");
					if(t_1==String(L"Settings",8)){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<214>");
						if((bb_input_KeyHit(27))!=0){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<216>");
							m_ToState=String(L"MainMenu",8);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<217>");
							m_GameState=String(L"Loading",7);
						}
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<221>");
						if(t_1==String(L"About",5)){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<223>");
							if((bb_input_KeyHit(27))!=0){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<225>");
								m_ToState=String(L"MainMenu",8);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<226>");
								m_GameState=String(L"Loading",7);
							}
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<229>");
							if((bb_input_KeyHit(13))!=0){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<230>");
								if(m_ImageStrip3==m_ImageStrip1){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<231>");
									gc_assign(m_ImageStrip3,m_ImageStrip2);
								}else{
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<233>");
									gc_assign(m_ImageStrip3,m_ImageStrip1);
								}
							}
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<238>");
							m_P1->p_UpdateAction();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<239>");
							m_P2->p_UpdateAction();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<241>");
							m_P2->p_AnimationCycle();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<242>");
							m_P1->p_AnimationCycle();
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<244>");
							if(t_1==String(L"Game",4)){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<246>");
								if((bb_input_KeyHit(27))!=0){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<247>");
									m_ToState=String(L"MainMenu",8);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<248>");
									m_GameState=String(L"Loading",7);
								}
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<253>");
								m_P1->p_PlayerCollisionCheck();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<254>");
								m_P1->p_Gravity(5);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<256>");
								if(m_P1->m_Attacking==false){
									DBG_BLOCK();
									m_P1->p_KeyBinds();
								}
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<260>");
								m_P2->p_PlayerCollisionCheck();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<261>");
								m_P2->p_Gravity(5);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<263>");
								if(m_P2->m_Attacking==false){
									DBG_BLOCK();
									m_P2->p_KeyBinds();
								}
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<267>");
								if((bb_input_KeyHit(112))!=0){
									DBG_BLOCK();
									m_DeveloperMode=!m_DeveloperMode;
								}
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<269>");
								m_P1->p_Jump();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<270>");
								m_P2->p_Jump();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<272>");
								m_P1->p_UpdateAction();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<273>");
								m_P2->p_UpdateAction();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<275>");
								m_P2->p_AnimationCycle();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<276>");
								m_P1->p_AnimationCycle();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<281>");
								m_P2->p_ToggleAttackCheckOff();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<282>");
								m_P1->p_ToggleAttackCheckOff();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<284>");
								m_P1->p_AttackCldwn();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<285>");
								m_P2->p_AttackCldwn();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<290>");
								bool t_4=true;
								DBG_LOCAL(t_4,"4")
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<294>");
								if(t_4==m_P1->m_Attacking){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<296>");
									String t_5=m_P1->m_AttackType;
									DBG_LOCAL(t_5,"5")
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<297>");
									if(t_5==String(L"BAttack",7)){
										DBG_BLOCK();
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<299>");
										if((m_AttackAlgorithm(m_P1->m_BAttackGrid,m_P1->m_x,m_P1->m_y,m_P1->m_Direction,m_P2->m_x,m_P2->m_y,m_P2->m_W,m_P2->m_H))!=0){
											DBG_BLOCK();
											m_P2->p_OnDmgTaken();
										}
									}else{
										DBG_BLOCK();
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<301>");
										if(t_5==String(L"SPAttack",8)){
											DBG_BLOCK();
										}
									}
								}else{
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<306>");
									if(t_4==m_P2->m_Attacking){
										DBG_BLOCK();
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<308>");
										String t_6=m_P2->m_AttackType;
										DBG_LOCAL(t_6,"6")
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<309>");
										if(t_6==String(L"BAttack",7)){
											DBG_BLOCK();
											DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<311>");
											if((m_AttackAlgorithm(m_P2->m_BAttackGrid,m_P2->m_x,m_P2->m_y,m_P2->m_Direction,m_P1->m_x,m_P1->m_y,m_P1->m_W,m_P1->m_H))!=0){
												DBG_BLOCK();
												m_P1->p_OnDmgTaken();
											}
										}else{
											DBG_BLOCK();
											DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<313>");
											if(t_6==String(L"SPAttack",8)){
												DBG_BLOCK();
											}
										}
									}
								}
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<321>");
								m_P1->p_Death();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<322>");
								m_P2->p_Death();
							}
						}
					}
				}
			}
		}
	}
	return 0;
}
int c_Game_app::p_CalculateFrameRate(){
	DBG_ENTER("Game_app.CalculateFrameRate")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<866>");
	if(m_Delay->p_DelayCommand(1000)==1){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<868>");
		m_Output=m_FrameRate;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<870>");
		m_FrameRate=0;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<874>");
		m_FrameRate+=1;
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<880>");
	bb_graphics_DrawText(String(m_Output),FLOAT(0.0),FLOAT(50.0),FLOAT(0.0),FLOAT(0.0));
	return 0;
}
int c_Game_app::p_OnRender(){
	DBG_ENTER("Game_app.OnRender")
	c_Game_app *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<456>");
	String t_7=m_GameState;
	DBG_LOCAL(t_7,"7")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<458>");
	if(t_7==String(L"Opening",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<459>");
		bb_graphics_Cls(FLOAT(0.0),FLOAT(0.0),FLOAT(0.0));
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<460>");
		if(m_Stage!=3){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<461>");
			c_Image* t_8=m_CurrentStrip;
			DBG_LOCAL(t_8,"8")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<462>");
			if(t_8==m_ImageStrip1){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<463>");
				bb_graphics_DrawImage(m_CurrentStrip,FLOAT(296.0),FLOAT(91.0),m_Counter);
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<464>");
				if(t_8==m_ImageStrip2){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<465>");
					if(m_Stage==2){
						DBG_BLOCK();
						bb_graphics_DrawImage(m_CurrentStrip,FLOAT(459.0),FLOAT(251.0),m_Counter);
					}
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<466>");
					if(t_8==m_ImageStrip3){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<467>");
						bb_graphics_DrawImage(m_CurrentStrip,FLOAT(0.0),FLOAT(0.0),m_Counter);
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<468>");
						if(t_8==m_ImageStrip4){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<469>");
							bb_graphics_DrawImage(m_CurrentStrip,FLOAT(0.0),FLOAT(0.0),m_Counter);
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<470>");
							if(t_8==m_ImageStrip5){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<471>");
								bb_graphics_DrawImage(m_CurrentStrip,FLOAT(0.0),FLOAT(0.0),m_Counter);
							}
						}
					}
				}
			}
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<475>");
		if(t_7==String(L"MainMenu",8)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<476>");
			bb_graphics_DrawImage(m_BackgroundImage,FLOAT(0.0),FLOAT(0.0),0);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<480>");
			int t_9=m_Menu->m_yM;
			DBG_LOCAL(t_9,"9")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<481>");
			if(t_9==0){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<483>");
				if(m_Menu->m_MenuImage==m_ImageStrip1){
					DBG_BLOCK();
					bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(559.0),FLOAT(105.0),m_Menu->m_AnimationFrame);
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<485>");
				if(t_9==1){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<486>");
					if(m_Menu->m_MenuImage==m_ImageStrip2){
						DBG_BLOCK();
						bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(563.0),FLOAT(171.0),m_Menu->m_AnimationFrame);
					}
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<487>");
					if(t_9==2){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<488>");
						if(m_Menu->m_MenuImage==m_ImageStrip3){
							DBG_BLOCK();
							bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(568.0),FLOAT(236.0),m_Menu->m_AnimationFrame);
						}
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<489>");
						if(t_9==3){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<490>");
							if(m_Menu->m_MenuImage==m_ImageStrip4){
								DBG_BLOCK();
								bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(573.0),FLOAT(301.0),m_Menu->m_AnimationFrame);
							}
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<491>");
							if(t_9==4){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<492>");
								if(m_Menu->m_MenuImage==m_ImageStrip5){
									DBG_BLOCK();
									bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(578.0),FLOAT(365.0),m_Menu->m_AnimationFrame);
								}
							}
						}
					}
				}
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<497>");
			if(t_7==String(L"Loading",7)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<499>");
				bb_graphics_DrawImage(m_LoadingB,FLOAT(0.0),FLOAT(0.0),0);
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<501>");
				if(t_7==String(L"CharacterSelect",15)){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<504>");
					bb_graphics_DrawImage(m_BackgroundImage,FLOAT(0.0),FLOAT(0.0),0);
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<509>");
					int t_10=m_Menu->m_xM;
					DBG_LOCAL(t_10,"10")
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<510>");
					if(t_10==0){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<511>");
						if(m_Menu->m_MenuImage==m_ImageStrip4){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<512>");
							bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(260.0),FLOAT(0.0),m_Menu->m_AnimationFrame);
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<513>");
							bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(267.0),FLOAT(92.0),m_Menu->m_AnimationFrame);
						}
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<515>");
						if(m_Menu->m_MenuImage==m_ImageStrip2){
							DBG_BLOCK();
							bb_graphics_DrawImage(m_ImageStrip1,FLOAT(0.0),FLOAT(300.0),3);
						}
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<516>");
						if(m_Menu->m_MenuImage==m_ImageStrip3){
							DBG_BLOCK();
							bb_graphics_DrawImage(m_ImageStrip1,FLOAT(945.0),FLOAT(300.0),2);
						}
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<517>");
						if(t_10==1){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<518>");
							bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(567.0),FLOAT(142.0),m_Menu->m_AnimationFrame);
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<519>");
							if(t_10==2){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<520>");
								bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(729.0),FLOAT(195.0),m_Menu->m_AnimationFrame);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<522>");
								if(m_Menu->m_MenuImage==m_ImageStrip2){
									DBG_BLOCK();
									bb_graphics_DrawImage(m_ImageStrip1,FLOAT(0.0),FLOAT(300.0),1);
								}
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<523>");
								if(m_Menu->m_MenuImage==m_ImageStrip3){
									DBG_BLOCK();
									bb_graphics_DrawImage(m_ImageStrip1,FLOAT(945.0),FLOAT(300.0),0);
								}
							}else{
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<525>");
								if(t_10==3){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<526>");
									bb_graphics_DrawImage(m_Menu->m_MenuImage,FLOAT(994.0),FLOAT(125.0),m_Menu->m_AnimationFrame);
								}
							}
						}
					}
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<529>");
					if(m_SelectedPlayerP1==String(L"Jennid",6)){
						DBG_BLOCK();
						bb_graphics_DrawImage(m_ImageStrip1,FLOAT(0.0),FLOAT(300.0),1);
					}
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<530>");
					if(m_SelectedPlayerP2==String(L"Jennid",6)){
						DBG_BLOCK();
						bb_graphics_DrawImage(m_ImageStrip1,FLOAT(945.0),FLOAT(300.0),0);
					}
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<532>");
					if(t_7==String(L"Settings",8)){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<533>");
						bb_graphics_DrawImage(m_BackgroundImage,FLOAT(0.0),FLOAT(0.0),0);
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<535>");
						if(t_7==String(L"About",5)){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<537>");
							bb_graphics_DrawImage(m_BackgroundImage,FLOAT(0.0),FLOAT(0.0),0);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<539>");
							bb_graphics_DrawImage(m_ImageStrip3,FLOAT(333.0),FLOAT(207.0),0);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<540>");
							bb_graphics_DrawImage(m_P1->m_Sprite,m_P1->m_x,m_P1->m_y,m_P1->m_FrameCounter);
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<541>");
							bb_graphics_DrawImage(m_P2->m_Sprite,m_P2->m_x,m_P2->m_y,m_P2->m_FrameCounter);
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<543>");
							if(t_7==String(L"Game",4)){
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<545>");
								bb_graphics_DrawImage(m_BackgroundImage,FLOAT(0.0),FLOAT(0.0),0);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<550>");
								bb_graphics_DrawImage(m_P1->m_Sprite,m_P1->m_x,m_P1->m_y,m_P1->m_FrameCounter);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<551>");
								bb_graphics_DrawImage(m_P2->m_Sprite,m_P2->m_x,m_P2->m_y,m_P2->m_FrameCounter);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<556>");
								bb_graphics_DrawImage(m_ImageStrip1,FLOAT(255.0),FLOAT(550.0),0);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<557>");
								bb_graphics_DrawImage(m_ImageStrip1,FLOAT(749.0),FLOAT(550.0),1);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<558>");
								bb_graphics_DrawImage(m_ImageStrip2,FLOAT(413.0),FLOAT(573.0),m_P1->m_Health);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<559>");
								bb_graphics_DrawImage(m_ImageStrip2,FLOAT(907.0),FLOAT(573.0),m_P2->m_Health);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<560>");
								bb_graphics_DrawImage(m_ImageStrip3,FLOAT(396.0),FLOAT(512.0),0);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<561>");
								bb_graphics_DrawImage(m_ImageStrip3,FLOAT(890.0),FLOAT(512.0),0);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<563>");
								bb_graphics_DrawImage(m_CharacterP1,FLOAT(240.0),FLOAT(552.0),0);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<564>");
								bb_graphics_DrawImage(m_CharacterP2,FLOAT(740.0),FLOAT(552.0),0);
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<566>");
								p_CalculateFrameRate();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<570>");
								if(m_DeveloperMode==true){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<572>");
									m_Collision->p_Draw(m_MapGrid,32,18,40,0,0);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<573>");
									bb_graphics_DrawRect(Float(m_P1->m_pcX1),Float(m_P1->m_pcY2),FLOAT(10.0),FLOAT(10.0));
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<574>");
									bb_graphics_DrawRect(Float(m_P1->m_pcX2),Float(m_P1->m_pcY2),FLOAT(10.0),FLOAT(10.0));
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<575>");
									bb_graphics_DrawRect(Float(m_P2->m_pcX1),Float(m_P2->m_pcY2),FLOAT(10.0),FLOAT(10.0));
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<576>");
									bb_graphics_DrawRect(Float(m_P2->m_pcX2),Float(m_P2->m_pcY2),FLOAT(10.0),FLOAT(10.0));
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<581>");
									bb_graphics_DrawText(String(bb_app_Millisecs()),FLOAT(0.0),FLOAT(0.0),FLOAT(0.0),FLOAT(0.0));
								}
							}
						}
					}
				}
			}
		}
	}
	return 0;
}
void c_Game_app::mark(){
	c_App::mark();
	gc_mark_q(m_BackgroundImage);
	gc_mark_q(m_Collision);
	gc_mark_q(m_P1);
	gc_mark_q(m_P2);
	gc_mark_q(m_CharacterP1);
	gc_mark_q(m_CharacterP2);
	gc_mark_q(m_ImageStrip1);
	gc_mark_q(m_ImageStrip2);
	gc_mark_q(m_ImageStrip3);
	gc_mark_q(m_ImageStrip4);
	gc_mark_q(m_ImageStrip5);
	gc_mark_q(m_Menu);
	gc_mark_q(m_LoadingB);
	gc_mark_q(m_Delay);
	gc_mark_q(m_ImageSheet);
	gc_mark_q(m_CurrentStrip);
	gc_mark_q(m_Welcome);
	gc_mark_q(m_Nbidia);
}
String c_Game_app::debug(){
	String t="(Game_app)\n";
	t=c_App::debug()+t;
	t+=dbg_decl("ToState",&m_ToState);
	t+=dbg_decl("Delay",&m_Delay);
	t+=dbg_decl("ImageSheet",&m_ImageSheet);
	t+=dbg_decl("ImageStrip1",&m_ImageStrip1);
	t+=dbg_decl("ImageStrip2",&m_ImageStrip2);
	t+=dbg_decl("ImageStrip3",&m_ImageStrip3);
	t+=dbg_decl("ImageStrip4",&m_ImageStrip4);
	t+=dbg_decl("ImageStrip5",&m_ImageStrip5);
	t+=dbg_decl("Menu",&m_Menu);
	t+=dbg_decl("CharacterP1",&m_CharacterP1);
	t+=dbg_decl("CharacterP2",&m_CharacterP2);
	t+=dbg_decl("GameState",&m_GameState);
	t+=dbg_decl("Welcome",&m_Welcome);
	t+=dbg_decl("Nbidia",&m_Nbidia);
	t+=dbg_decl("BackgroundImage",&m_BackgroundImage);
	t+=dbg_decl("Collision",&m_Collision);
	t+=dbg_decl("Map1",&m_Map1);
	t+=dbg_decl("Map2",&m_Map2);
	t+=dbg_decl("Map3",&m_Map3);
	t+=dbg_decl("P1",&m_P1);
	t+=dbg_decl("P2",&m_P2);
	t+=dbg_decl("DeveloperMode",&m_DeveloperMode);
	t+=dbg_decl("LoadingB",&m_LoadingB);
	t+=dbg_decl("FrameRate",&m_FrameRate);
	t+=dbg_decl("Output",&m_Output);
	t+=dbg_decl("SelectedMap",&m_SelectedMap);
	t+=dbg_decl("SelectedPlayerP1",&m_SelectedPlayerP1);
	t+=dbg_decl("SelectedPlayerP2",&m_SelectedPlayerP2);
	t+=dbg_decl("PlayerName",&m_PlayerName);
	t+=dbg_decl("MapGrid",&c_Game_app::m_MapGrid);
	t+=dbg_decl("Counter",&m_Counter);
	t+=dbg_decl("Stage",&m_Stage);
	t+=dbg_decl("CurrentStrip",&m_CurrentStrip);
	t+=dbg_decl("Toggle",&m_Toggle);
	return t;
}
c_App* bb_app__app;
c_GameDelegate::c_GameDelegate(){
	m__graphics=0;
	m__audio=0;
	m__input=0;
}
c_GameDelegate* c_GameDelegate::m_new(){
	DBG_ENTER("GameDelegate.new")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<65>");
	return this;
}
void c_GameDelegate::StartGame(){
	DBG_ENTER("GameDelegate.StartGame")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<75>");
	gc_assign(m__graphics,(new gxtkGraphics));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<76>");
	bb_graphics_SetGraphicsDevice(m__graphics);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<77>");
	bb_graphics_SetFont(0,32);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<79>");
	gc_assign(m__audio,(new gxtkAudio));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<80>");
	bb_audio_SetAudioDevice(m__audio);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<82>");
	gc_assign(m__input,(new c_InputDevice)->m_new());
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<83>");
	bb_input_SetInputDevice(m__input);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<85>");
	bb_app_ValidateDeviceWindow(false);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<87>");
	bb_app_EnumDisplayModes();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<89>");
	bb_app__app->p_OnCreate();
}
void c_GameDelegate::SuspendGame(){
	DBG_ENTER("GameDelegate.SuspendGame")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<93>");
	bb_app__app->p_OnSuspend();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<94>");
	m__audio->Suspend();
}
void c_GameDelegate::ResumeGame(){
	DBG_ENTER("GameDelegate.ResumeGame")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<98>");
	m__audio->Resume();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<99>");
	bb_app__app->p_OnResume();
}
void c_GameDelegate::UpdateGame(){
	DBG_ENTER("GameDelegate.UpdateGame")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<103>");
	bb_app_ValidateDeviceWindow(true);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<104>");
	m__input->p_BeginUpdate();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<105>");
	bb_app__app->p_OnUpdate();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<106>");
	m__input->p_EndUpdate();
}
void c_GameDelegate::RenderGame(){
	DBG_ENTER("GameDelegate.RenderGame")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<110>");
	bb_app_ValidateDeviceWindow(true);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<111>");
	int t_mode=m__graphics->BeginRender();
	DBG_LOCAL(t_mode,"mode")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<112>");
	if((t_mode)!=0){
		DBG_BLOCK();
		bb_graphics_BeginRender();
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<113>");
	if(t_mode==2){
		DBG_BLOCK();
		bb_app__app->p_OnLoading();
	}else{
		DBG_BLOCK();
		bb_app__app->p_OnRender();
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<114>");
	if((t_mode)!=0){
		DBG_BLOCK();
		bb_graphics_EndRender();
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<115>");
	m__graphics->EndRender();
}
void c_GameDelegate::KeyEvent(int t_event,int t_data){
	DBG_ENTER("GameDelegate.KeyEvent")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<119>");
	m__input->p_KeyEvent(t_event,t_data);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<120>");
	if(t_event!=1){
		DBG_BLOCK();
		return;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<121>");
	int t_1=t_data;
	DBG_LOCAL(t_1,"1")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<122>");
	if(t_1==432){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<123>");
		bb_app__app->p_OnClose();
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<124>");
		if(t_1==416){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<125>");
			bb_app__app->p_OnBack();
		}
	}
}
void c_GameDelegate::MouseEvent(int t_event,int t_data,Float t_x,Float t_y){
	DBG_ENTER("GameDelegate.MouseEvent")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<130>");
	m__input->p_MouseEvent(t_event,t_data,t_x,t_y);
}
void c_GameDelegate::TouchEvent(int t_event,int t_data,Float t_x,Float t_y){
	DBG_ENTER("GameDelegate.TouchEvent")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<134>");
	m__input->p_TouchEvent(t_event,t_data,t_x,t_y);
}
void c_GameDelegate::MotionEvent(int t_event,int t_data,Float t_x,Float t_y,Float t_z){
	DBG_ENTER("GameDelegate.MotionEvent")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_z,"z")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<138>");
	m__input->p_MotionEvent(t_event,t_data,t_x,t_y,t_z);
}
void c_GameDelegate::DiscardGraphics(){
	DBG_ENTER("GameDelegate.DiscardGraphics")
	c_GameDelegate *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<142>");
	m__graphics->DiscardGraphics();
}
void c_GameDelegate::mark(){
	BBGameDelegate::mark();
	gc_mark_q(m__graphics);
	gc_mark_q(m__audio);
	gc_mark_q(m__input);
}
String c_GameDelegate::debug(){
	String t="(GameDelegate)\n";
	t+=dbg_decl("_graphics",&m__graphics);
	t+=dbg_decl("_audio",&m__audio);
	t+=dbg_decl("_input",&m__input);
	return t;
}
c_GameDelegate* bb_app__delegate;
BBGame* bb_app__game;
c_Game_app* bb_Test_Game;
int bbMain(){
	DBG_ENTER("Main")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<14>");
	gc_assign(bb_Test_Game,(new c_Game_app)->m_new());
	return 0;
}
gxtkGraphics* bb_graphics_device;
int bb_graphics_SetGraphicsDevice(gxtkGraphics* t_dev){
	DBG_ENTER("SetGraphicsDevice")
	DBG_LOCAL(t_dev,"dev")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<63>");
	gc_assign(bb_graphics_device,t_dev);
	return 0;
}
c_Image::c_Image(){
	m_surface=0;
	m_width=0;
	m_height=0;
	m_frames=Array<c_Frame* >();
	m_flags=0;
	m_tx=FLOAT(.0);
	m_ty=FLOAT(.0);
	m_source=0;
}
int c_Image::m_DefaultFlags;
c_Image* c_Image::m_new(){
	DBG_ENTER("Image.new")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<70>");
	return this;
}
int c_Image::p_SetHandle(Float t_tx,Float t_ty){
	DBG_ENTER("Image.SetHandle")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_tx,"tx")
	DBG_LOCAL(t_ty,"ty")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<114>");
	this->m_tx=t_tx;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<115>");
	this->m_ty=t_ty;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<116>");
	this->m_flags=this->m_flags&-2;
	return 0;
}
int c_Image::p_ApplyFlags(int t_iflags){
	DBG_ENTER("Image.ApplyFlags")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_iflags,"iflags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<197>");
	m_flags=t_iflags;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<199>");
	if((m_flags&2)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<200>");
		Array<c_Frame* > t_=m_frames;
		int t_2=0;
		while(t_2<t_.Length()){
			DBG_BLOCK();
			c_Frame* t_f=t_.At(t_2);
			t_2=t_2+1;
			DBG_LOCAL(t_f,"f")
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<201>");
			t_f->m_x+=1;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<203>");
		m_width-=2;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<206>");
	if((m_flags&4)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<207>");
		Array<c_Frame* > t_3=m_frames;
		int t_4=0;
		while(t_4<t_3.Length()){
			DBG_BLOCK();
			c_Frame* t_f2=t_3.At(t_4);
			t_4=t_4+1;
			DBG_LOCAL(t_f2,"f")
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<208>");
			t_f2->m_y+=1;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<210>");
		m_height-=2;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<213>");
	if((m_flags&1)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<214>");
		p_SetHandle(Float(m_width)/FLOAT(2.0),Float(m_height)/FLOAT(2.0));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<217>");
	if(m_frames.Length()==1 && m_frames.At(0)->m_x==0 && m_frames.At(0)->m_y==0 && m_width==m_surface->Width() && m_height==m_surface->Height()){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<218>");
		m_flags|=65536;
	}
	return 0;
}
c_Image* c_Image::p_Init(gxtkSurface* t_surf,int t_nframes,int t_iflags){
	DBG_ENTER("Image.Init")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_surf,"surf")
	DBG_LOCAL(t_nframes,"nframes")
	DBG_LOCAL(t_iflags,"iflags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<143>");
	if((m_surface)!=0){
		DBG_BLOCK();
		bbError(String(L"Image already initialized",25));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<144>");
	gc_assign(m_surface,t_surf);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<146>");
	m_width=m_surface->Width()/t_nframes;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<147>");
	m_height=m_surface->Height();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<149>");
	gc_assign(m_frames,Array<c_Frame* >(t_nframes));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<150>");
	for(int t_i=0;t_i<t_nframes;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<151>");
		gc_assign(m_frames.At(t_i),(new c_Frame)->m_new(t_i*m_width,0));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<154>");
	p_ApplyFlags(t_iflags);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<155>");
	return this;
}
c_Image* c_Image::p_Init2(gxtkSurface* t_surf,int t_x,int t_y,int t_iwidth,int t_iheight,int t_nframes,int t_iflags,c_Image* t_src,int t_srcx,int t_srcy,int t_srcw,int t_srch){
	DBG_ENTER("Image.Init")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_surf,"surf")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_iwidth,"iwidth")
	DBG_LOCAL(t_iheight,"iheight")
	DBG_LOCAL(t_nframes,"nframes")
	DBG_LOCAL(t_iflags,"iflags")
	DBG_LOCAL(t_src,"src")
	DBG_LOCAL(t_srcx,"srcx")
	DBG_LOCAL(t_srcy,"srcy")
	DBG_LOCAL(t_srcw,"srcw")
	DBG_LOCAL(t_srch,"srch")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<159>");
	if((m_surface)!=0){
		DBG_BLOCK();
		bbError(String(L"Image already initialized",25));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<160>");
	gc_assign(m_surface,t_surf);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<161>");
	gc_assign(m_source,t_src);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<163>");
	m_width=t_iwidth;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<164>");
	m_height=t_iheight;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<166>");
	gc_assign(m_frames,Array<c_Frame* >(t_nframes));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<168>");
	int t_ix=t_x;
	int t_iy=t_y;
	DBG_LOCAL(t_ix,"ix")
	DBG_LOCAL(t_iy,"iy")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<170>");
	for(int t_i=0;t_i<t_nframes;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<171>");
		if(t_ix+m_width>t_srcw){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<172>");
			t_ix=0;
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<173>");
			t_iy+=m_height;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<175>");
		if(t_ix+m_width>t_srcw || t_iy+m_height>t_srch){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<176>");
			bbError(String(L"Image frame outside surface",27));
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<178>");
		gc_assign(m_frames.At(t_i),(new c_Frame)->m_new(t_ix+t_srcx,t_iy+t_srcy));
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<179>");
		t_ix+=m_width;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<182>");
	p_ApplyFlags(t_iflags);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<183>");
	return this;
}
c_Image* c_Image::p_GrabImage(int t_x,int t_y,int t_width,int t_height,int t_nframes,int t_flags){
	DBG_ENTER("Image.GrabImage")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_width,"width")
	DBG_LOCAL(t_height,"height")
	DBG_LOCAL(t_nframes,"nframes")
	DBG_LOCAL(t_flags,"flags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<109>");
	if(m_frames.Length()!=1){
		DBG_BLOCK();
		return 0;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<110>");
	c_Image* t_=((new c_Image)->m_new())->p_Init2(m_surface,t_x,t_y,t_width,t_height,t_nframes,t_flags,this,m_frames.At(0)->m_x,m_frames.At(0)->m_y,this->m_width,this->m_height);
	return t_;
}
int c_Image::p_Frames(){
	DBG_ENTER("Image.Frames")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<93>");
	int t_=m_frames.Length();
	return t_;
}
int c_Image::p_Width(){
	DBG_ENTER("Image.Width")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<81>");
	return m_width;
}
int c_Image::p_Height(){
	DBG_ENTER("Image.Height")
	c_Image *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<85>");
	return m_height;
}
void c_Image::mark(){
	Object::mark();
	gc_mark_q(m_surface);
	gc_mark_q(m_frames);
	gc_mark_q(m_source);
}
String c_Image::debug(){
	String t="(Image)\n";
	t+=dbg_decl("DefaultFlags",&c_Image::m_DefaultFlags);
	t+=dbg_decl("source",&m_source);
	t+=dbg_decl("surface",&m_surface);
	t+=dbg_decl("width",&m_width);
	t+=dbg_decl("height",&m_height);
	t+=dbg_decl("flags",&m_flags);
	t+=dbg_decl("frames",&m_frames);
	t+=dbg_decl("tx",&m_tx);
	t+=dbg_decl("ty",&m_ty);
	return t;
}
c_GraphicsContext::c_GraphicsContext(){
	m_defaultFont=0;
	m_font=0;
	m_firstChar=0;
	m_matrixSp=0;
	m_ix=FLOAT(1.0);
	m_iy=FLOAT(.0);
	m_jx=FLOAT(.0);
	m_jy=FLOAT(1.0);
	m_tx=FLOAT(.0);
	m_ty=FLOAT(.0);
	m_tformed=0;
	m_matDirty=0;
	m_color_r=FLOAT(.0);
	m_color_g=FLOAT(.0);
	m_color_b=FLOAT(.0);
	m_alpha=FLOAT(.0);
	m_blend=0;
	m_scissor_x=FLOAT(.0);
	m_scissor_y=FLOAT(.0);
	m_scissor_width=FLOAT(.0);
	m_scissor_height=FLOAT(.0);
	m_matrixStack=Array<Float >(192);
}
c_GraphicsContext* c_GraphicsContext::m_new(){
	DBG_ENTER("GraphicsContext.new")
	c_GraphicsContext *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<29>");
	return this;
}
int c_GraphicsContext::p_Validate(){
	DBG_ENTER("GraphicsContext.Validate")
	c_GraphicsContext *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<40>");
	if((m_matDirty)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<41>");
		bb_graphics_renderDevice->SetMatrix(bb_graphics_context->m_ix,bb_graphics_context->m_iy,bb_graphics_context->m_jx,bb_graphics_context->m_jy,bb_graphics_context->m_tx,bb_graphics_context->m_ty);
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<42>");
		m_matDirty=0;
	}
	return 0;
}
void c_GraphicsContext::mark(){
	Object::mark();
	gc_mark_q(m_defaultFont);
	gc_mark_q(m_font);
	gc_mark_q(m_matrixStack);
}
String c_GraphicsContext::debug(){
	String t="(GraphicsContext)\n";
	t+=dbg_decl("color_r",&m_color_r);
	t+=dbg_decl("color_g",&m_color_g);
	t+=dbg_decl("color_b",&m_color_b);
	t+=dbg_decl("alpha",&m_alpha);
	t+=dbg_decl("blend",&m_blend);
	t+=dbg_decl("ix",&m_ix);
	t+=dbg_decl("iy",&m_iy);
	t+=dbg_decl("jx",&m_jx);
	t+=dbg_decl("jy",&m_jy);
	t+=dbg_decl("tx",&m_tx);
	t+=dbg_decl("ty",&m_ty);
	t+=dbg_decl("tformed",&m_tformed);
	t+=dbg_decl("matDirty",&m_matDirty);
	t+=dbg_decl("scissor_x",&m_scissor_x);
	t+=dbg_decl("scissor_y",&m_scissor_y);
	t+=dbg_decl("scissor_width",&m_scissor_width);
	t+=dbg_decl("scissor_height",&m_scissor_height);
	t+=dbg_decl("matrixStack",&m_matrixStack);
	t+=dbg_decl("matrixSp",&m_matrixSp);
	t+=dbg_decl("font",&m_font);
	t+=dbg_decl("firstChar",&m_firstChar);
	t+=dbg_decl("defaultFont",&m_defaultFont);
	return t;
}
c_GraphicsContext* bb_graphics_context;
String bb_data_FixDataPath(String t_path){
	DBG_ENTER("FixDataPath")
	DBG_LOCAL(t_path,"path")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/data.monkey<7>");
	int t_i=t_path.Find(String(L":/",2),0);
	DBG_LOCAL(t_i,"i")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/data.monkey<8>");
	if(t_i!=-1 && t_path.Find(String(L"/",1),0)==t_i+1){
		DBG_BLOCK();
		return t_path;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/data.monkey<9>");
	if(t_path.StartsWith(String(L"./",2)) || t_path.StartsWith(String(L"/",1))){
		DBG_BLOCK();
		return t_path;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/data.monkey<10>");
	String t_=String(L"monkey://data/",14)+t_path;
	return t_;
}
c_Frame::c_Frame(){
	m_x=0;
	m_y=0;
}
c_Frame* c_Frame::m_new(int t_x,int t_y){
	DBG_ENTER("Frame.new")
	c_Frame *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<23>");
	this->m_x=t_x;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<24>");
	this->m_y=t_y;
	return this;
}
c_Frame* c_Frame::m_new2(){
	DBG_ENTER("Frame.new")
	c_Frame *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<18>");
	return this;
}
void c_Frame::mark(){
	Object::mark();
}
String c_Frame::debug(){
	String t="(Frame)\n";
	t+=dbg_decl("x",&m_x);
	t+=dbg_decl("y",&m_y);
	return t;
}
c_Image* bb_graphics_LoadImage(String t_path,int t_frameCount,int t_flags){
	DBG_ENTER("LoadImage")
	DBG_LOCAL(t_path,"path")
	DBG_LOCAL(t_frameCount,"frameCount")
	DBG_LOCAL(t_flags,"flags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<239>");
	gxtkSurface* t_surf=bb_graphics_device->LoadSurface(bb_data_FixDataPath(t_path));
	DBG_LOCAL(t_surf,"surf")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<240>");
	if((t_surf)!=0){
		DBG_BLOCK();
		c_Image* t_=((new c_Image)->m_new())->p_Init(t_surf,t_frameCount,t_flags);
		return t_;
	}
	return 0;
}
c_Image* bb_graphics_LoadImage2(String t_path,int t_frameWidth,int t_frameHeight,int t_frameCount,int t_flags){
	DBG_ENTER("LoadImage")
	DBG_LOCAL(t_path,"path")
	DBG_LOCAL(t_frameWidth,"frameWidth")
	DBG_LOCAL(t_frameHeight,"frameHeight")
	DBG_LOCAL(t_frameCount,"frameCount")
	DBG_LOCAL(t_flags,"flags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<244>");
	gxtkSurface* t_surf=bb_graphics_device->LoadSurface(bb_data_FixDataPath(t_path));
	DBG_LOCAL(t_surf,"surf")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<245>");
	if((t_surf)!=0){
		DBG_BLOCK();
		c_Image* t_=((new c_Image)->m_new())->p_Init2(t_surf,0,0,t_frameWidth,t_frameHeight,t_frameCount,t_flags,0,0,0,t_surf->Width(),t_surf->Height());
		return t_;
	}
	return 0;
}
int bb_graphics_SetFont(c_Image* t_font,int t_firstChar){
	DBG_ENTER("SetFont")
	DBG_LOCAL(t_font,"font")
	DBG_LOCAL(t_firstChar,"firstChar")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<548>");
	if(!((t_font)!=0)){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<549>");
		if(!((bb_graphics_context->m_defaultFont)!=0)){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<550>");
			gc_assign(bb_graphics_context->m_defaultFont,bb_graphics_LoadImage(String(L"mojo_font.png",13),96,2));
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<552>");
		t_font=bb_graphics_context->m_defaultFont;
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<553>");
		t_firstChar=32;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<555>");
	gc_assign(bb_graphics_context->m_font,t_font);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<556>");
	bb_graphics_context->m_firstChar=t_firstChar;
	return 0;
}
gxtkAudio* bb_audio_device;
int bb_audio_SetAudioDevice(gxtkAudio* t_dev){
	DBG_ENTER("SetAudioDevice")
	DBG_LOCAL(t_dev,"dev")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<22>");
	gc_assign(bb_audio_device,t_dev);
	return 0;
}
c_InputDevice::c_InputDevice(){
	m__joyStates=Array<c_JoyState* >(4);
	m__keyDown=Array<bool >(512);
	m__keyHitPut=0;
	m__keyHitQueue=Array<int >(33);
	m__keyHit=Array<int >(512);
	m__charGet=0;
	m__charPut=0;
	m__charQueue=Array<int >(32);
	m__mouseX=FLOAT(.0);
	m__mouseY=FLOAT(.0);
	m__touchX=Array<Float >(32);
	m__touchY=Array<Float >(32);
	m__accelX=FLOAT(.0);
	m__accelY=FLOAT(.0);
	m__accelZ=FLOAT(.0);
}
c_InputDevice* c_InputDevice::m_new(){
	DBG_ENTER("InputDevice.new")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<26>");
	for(int t_i=0;t_i<4;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<27>");
		gc_assign(m__joyStates.At(t_i),(new c_JoyState)->m_new());
	}
	return this;
}
void c_InputDevice::p_PutKeyHit(int t_key){
	DBG_ENTER("InputDevice.PutKeyHit")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<237>");
	if(m__keyHitPut==m__keyHitQueue.Length()){
		DBG_BLOCK();
		return;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<238>");
	m__keyHit.At(t_key)+=1;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<239>");
	m__keyHitQueue.At(m__keyHitPut)=t_key;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<240>");
	m__keyHitPut+=1;
}
void c_InputDevice::p_BeginUpdate(){
	DBG_ENTER("InputDevice.BeginUpdate")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<189>");
	for(int t_i=0;t_i<4;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<190>");
		c_JoyState* t_state=m__joyStates.At(t_i);
		DBG_LOCAL(t_state,"state")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<191>");
		if(!BBGame::Game()->PollJoystick(t_i,t_state->m_joyx,t_state->m_joyy,t_state->m_joyz,t_state->m_buttons)){
			DBG_BLOCK();
			break;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<192>");
		for(int t_j=0;t_j<32;t_j=t_j+1){
			DBG_BLOCK();
			DBG_LOCAL(t_j,"j")
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<193>");
			int t_key=256+t_i*32+t_j;
			DBG_LOCAL(t_key,"key")
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<194>");
			if(t_state->m_buttons.At(t_j)){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<195>");
				if(!m__keyDown.At(t_key)){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<196>");
					m__keyDown.At(t_key)=true;
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<197>");
					p_PutKeyHit(t_key);
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<200>");
				m__keyDown.At(t_key)=false;
			}
		}
	}
}
void c_InputDevice::p_EndUpdate(){
	DBG_ENTER("InputDevice.EndUpdate")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<207>");
	for(int t_i=0;t_i<m__keyHitPut;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<208>");
		m__keyHit.At(m__keyHitQueue.At(t_i))=0;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<210>");
	m__keyHitPut=0;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<211>");
	m__charGet=0;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<212>");
	m__charPut=0;
}
void c_InputDevice::p_KeyEvent(int t_event,int t_data){
	DBG_ENTER("InputDevice.KeyEvent")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<111>");
	int t_1=t_event;
	DBG_LOCAL(t_1,"1")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<112>");
	if(t_1==1){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<113>");
		if(!m__keyDown.At(t_data)){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<114>");
			m__keyDown.At(t_data)=true;
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<115>");
			p_PutKeyHit(t_data);
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<116>");
			if(t_data==1){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<117>");
				m__keyDown.At(384)=true;
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<118>");
				p_PutKeyHit(384);
			}else{
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<119>");
				if(t_data==384){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<120>");
					m__keyDown.At(1)=true;
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<121>");
					p_PutKeyHit(1);
				}
			}
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<124>");
		if(t_1==2){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<125>");
			if(m__keyDown.At(t_data)){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<126>");
				m__keyDown.At(t_data)=false;
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<127>");
				if(t_data==1){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<128>");
					m__keyDown.At(384)=false;
				}else{
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<129>");
					if(t_data==384){
						DBG_BLOCK();
						DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<130>");
						m__keyDown.At(1)=false;
					}
				}
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<133>");
			if(t_1==3){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<134>");
				if(m__charPut<m__charQueue.Length()){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<135>");
					m__charQueue.At(m__charPut)=t_data;
					DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<136>");
					m__charPut+=1;
				}
			}
		}
	}
}
void c_InputDevice::p_MouseEvent(int t_event,int t_data,Float t_x,Float t_y){
	DBG_ENTER("InputDevice.MouseEvent")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<142>");
	int t_2=t_event;
	DBG_LOCAL(t_2,"2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<143>");
	if(t_2==4){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<144>");
		p_KeyEvent(1,1+t_data);
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<145>");
		if(t_2==5){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<146>");
			p_KeyEvent(2,1+t_data);
			return;
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<148>");
			if(t_2==6){
				DBG_BLOCK();
			}else{
				DBG_BLOCK();
				return;
			}
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<152>");
	m__mouseX=t_x;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<153>");
	m__mouseY=t_y;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<154>");
	m__touchX.At(0)=t_x;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<155>");
	m__touchY.At(0)=t_y;
}
void c_InputDevice::p_TouchEvent(int t_event,int t_data,Float t_x,Float t_y){
	DBG_ENTER("InputDevice.TouchEvent")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<159>");
	int t_3=t_event;
	DBG_LOCAL(t_3,"3")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<160>");
	if(t_3==7){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<161>");
		p_KeyEvent(1,384+t_data);
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<162>");
		if(t_3==8){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<163>");
			p_KeyEvent(2,384+t_data);
			return;
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<165>");
			if(t_3==9){
				DBG_BLOCK();
			}else{
				DBG_BLOCK();
				return;
			}
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<169>");
	m__touchX.At(t_data)=t_x;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<170>");
	m__touchY.At(t_data)=t_y;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<171>");
	if(t_data==0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<172>");
		m__mouseX=t_x;
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<173>");
		m__mouseY=t_y;
	}
}
void c_InputDevice::p_MotionEvent(int t_event,int t_data,Float t_x,Float t_y,Float t_z){
	DBG_ENTER("InputDevice.MotionEvent")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_event,"event")
	DBG_LOCAL(t_data,"data")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_z,"z")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<178>");
	int t_4=t_event;
	DBG_LOCAL(t_4,"4")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<179>");
	if(t_4==10){
		DBG_BLOCK();
	}else{
		DBG_BLOCK();
		return;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<183>");
	m__accelX=t_x;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<184>");
	m__accelY=t_y;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<185>");
	m__accelZ=t_z;
}
int c_InputDevice::p_KeyHit(int t_key){
	DBG_ENTER("InputDevice.KeyHit")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<52>");
	if(t_key>0 && t_key<512){
		DBG_BLOCK();
		return m__keyHit.At(t_key);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<53>");
	return 0;
}
bool c_InputDevice::p_KeyDown(int t_key){
	DBG_ENTER("InputDevice.KeyDown")
	c_InputDevice *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<47>");
	if(t_key>0 && t_key<512){
		DBG_BLOCK();
		return m__keyDown.At(t_key);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<48>");
	return false;
}
void c_InputDevice::mark(){
	Object::mark();
	gc_mark_q(m__joyStates);
	gc_mark_q(m__keyDown);
	gc_mark_q(m__keyHitQueue);
	gc_mark_q(m__keyHit);
	gc_mark_q(m__charQueue);
	gc_mark_q(m__touchX);
	gc_mark_q(m__touchY);
}
String c_InputDevice::debug(){
	String t="(InputDevice)\n";
	t+=dbg_decl("_keyDown",&m__keyDown);
	t+=dbg_decl("_keyHit",&m__keyHit);
	t+=dbg_decl("_keyHitQueue",&m__keyHitQueue);
	t+=dbg_decl("_keyHitPut",&m__keyHitPut);
	t+=dbg_decl("_charQueue",&m__charQueue);
	t+=dbg_decl("_charPut",&m__charPut);
	t+=dbg_decl("_charGet",&m__charGet);
	t+=dbg_decl("_mouseX",&m__mouseX);
	t+=dbg_decl("_mouseY",&m__mouseY);
	t+=dbg_decl("_touchX",&m__touchX);
	t+=dbg_decl("_touchY",&m__touchY);
	t+=dbg_decl("_accelX",&m__accelX);
	t+=dbg_decl("_accelY",&m__accelY);
	t+=dbg_decl("_accelZ",&m__accelZ);
	t+=dbg_decl("_joyStates",&m__joyStates);
	return t;
}
c_JoyState::c_JoyState(){
	m_joyx=Array<Float >(2);
	m_joyy=Array<Float >(2);
	m_joyz=Array<Float >(2);
	m_buttons=Array<bool >(32);
}
c_JoyState* c_JoyState::m_new(){
	DBG_ENTER("JoyState.new")
	c_JoyState *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<14>");
	return this;
}
void c_JoyState::mark(){
	Object::mark();
	gc_mark_q(m_joyx);
	gc_mark_q(m_joyy);
	gc_mark_q(m_joyz);
	gc_mark_q(m_buttons);
}
String c_JoyState::debug(){
	String t="(JoyState)\n";
	t+=dbg_decl("joyx",&m_joyx);
	t+=dbg_decl("joyy",&m_joyy);
	t+=dbg_decl("joyz",&m_joyz);
	t+=dbg_decl("buttons",&m_buttons);
	return t;
}
c_InputDevice* bb_input_device;
int bb_input_SetInputDevice(c_InputDevice* t_dev){
	DBG_ENTER("SetInputDevice")
	DBG_LOCAL(t_dev,"dev")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/input.monkey<22>");
	gc_assign(bb_input_device,t_dev);
	return 0;
}
int bb_app__devWidth;
int bb_app__devHeight;
void bb_app_ValidateDeviceWindow(bool t_notifyApp){
	DBG_ENTER("ValidateDeviceWindow")
	DBG_LOCAL(t_notifyApp,"notifyApp")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<57>");
	int t_w=bb_app__game->GetDeviceWidth();
	DBG_LOCAL(t_w,"w")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<58>");
	int t_h=bb_app__game->GetDeviceHeight();
	DBG_LOCAL(t_h,"h")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<59>");
	if(t_w==bb_app__devWidth && t_h==bb_app__devHeight){
		DBG_BLOCK();
		return;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<60>");
	bb_app__devWidth=t_w;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<61>");
	bb_app__devHeight=t_h;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<62>");
	if(t_notifyApp){
		DBG_BLOCK();
		bb_app__app->p_OnResize();
	}
}
c_DisplayMode::c_DisplayMode(){
	m__width=0;
	m__height=0;
}
c_DisplayMode* c_DisplayMode::m_new(int t_width,int t_height){
	DBG_ENTER("DisplayMode.new")
	c_DisplayMode *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_width,"width")
	DBG_LOCAL(t_height,"height")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<192>");
	m__width=t_width;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<193>");
	m__height=t_height;
	return this;
}
c_DisplayMode* c_DisplayMode::m_new2(){
	DBG_ENTER("DisplayMode.new")
	c_DisplayMode *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<189>");
	return this;
}
void c_DisplayMode::mark(){
	Object::mark();
}
String c_DisplayMode::debug(){
	String t="(DisplayMode)\n";
	t+=dbg_decl("_width",&m__width);
	t+=dbg_decl("_height",&m__height);
	return t;
}
c_Map::c_Map(){
	m_root=0;
}
c_Map* c_Map::m_new(){
	DBG_ENTER("Map.new")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<7>");
	return this;
}
c_Node* c_Map::p_FindNode(int t_key){
	DBG_ENTER("Map.FindNode")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<157>");
	c_Node* t_node=m_root;
	DBG_LOCAL(t_node,"node")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<159>");
	while((t_node)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<160>");
		int t_cmp=p_Compare(t_key,t_node->m_key);
		DBG_LOCAL(t_cmp,"cmp")
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<161>");
		if(t_cmp>0){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<162>");
			t_node=t_node->m_right;
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<163>");
			if(t_cmp<0){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<164>");
				t_node=t_node->m_left;
			}else{
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<166>");
				return t_node;
			}
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<169>");
	return t_node;
}
bool c_Map::p_Contains(int t_key){
	DBG_ENTER("Map.Contains")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<25>");
	bool t_=p_FindNode(t_key)!=0;
	return t_;
}
int c_Map::p_RotateLeft(c_Node* t_node){
	DBG_ENTER("Map.RotateLeft")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_node,"node")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<251>");
	c_Node* t_child=t_node->m_right;
	DBG_LOCAL(t_child,"child")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<252>");
	gc_assign(t_node->m_right,t_child->m_left);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<253>");
	if((t_child->m_left)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<254>");
		gc_assign(t_child->m_left->m_parent,t_node);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<256>");
	gc_assign(t_child->m_parent,t_node->m_parent);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<257>");
	if((t_node->m_parent)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<258>");
		if(t_node==t_node->m_parent->m_left){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<259>");
			gc_assign(t_node->m_parent->m_left,t_child);
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<261>");
			gc_assign(t_node->m_parent->m_right,t_child);
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<264>");
		gc_assign(m_root,t_child);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<266>");
	gc_assign(t_child->m_left,t_node);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<267>");
	gc_assign(t_node->m_parent,t_child);
	return 0;
}
int c_Map::p_RotateRight(c_Node* t_node){
	DBG_ENTER("Map.RotateRight")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_node,"node")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<271>");
	c_Node* t_child=t_node->m_left;
	DBG_LOCAL(t_child,"child")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<272>");
	gc_assign(t_node->m_left,t_child->m_right);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<273>");
	if((t_child->m_right)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<274>");
		gc_assign(t_child->m_right->m_parent,t_node);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<276>");
	gc_assign(t_child->m_parent,t_node->m_parent);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<277>");
	if((t_node->m_parent)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<278>");
		if(t_node==t_node->m_parent->m_right){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<279>");
			gc_assign(t_node->m_parent->m_right,t_child);
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<281>");
			gc_assign(t_node->m_parent->m_left,t_child);
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<284>");
		gc_assign(m_root,t_child);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<286>");
	gc_assign(t_child->m_right,t_node);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<287>");
	gc_assign(t_node->m_parent,t_child);
	return 0;
}
int c_Map::p_InsertFixup(c_Node* t_node){
	DBG_ENTER("Map.InsertFixup")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_node,"node")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<212>");
	while(((t_node->m_parent)!=0) && t_node->m_parent->m_color==-1 && ((t_node->m_parent->m_parent)!=0)){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<213>");
		if(t_node->m_parent==t_node->m_parent->m_parent->m_left){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<214>");
			c_Node* t_uncle=t_node->m_parent->m_parent->m_right;
			DBG_LOCAL(t_uncle,"uncle")
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<215>");
			if(((t_uncle)!=0) && t_uncle->m_color==-1){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<216>");
				t_node->m_parent->m_color=1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<217>");
				t_uncle->m_color=1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<218>");
				t_uncle->m_parent->m_color=-1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<219>");
				t_node=t_uncle->m_parent;
			}else{
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<221>");
				if(t_node==t_node->m_parent->m_right){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<222>");
					t_node=t_node->m_parent;
					DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<223>");
					p_RotateLeft(t_node);
				}
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<225>");
				t_node->m_parent->m_color=1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<226>");
				t_node->m_parent->m_parent->m_color=-1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<227>");
				p_RotateRight(t_node->m_parent->m_parent);
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<230>");
			c_Node* t_uncle2=t_node->m_parent->m_parent->m_left;
			DBG_LOCAL(t_uncle2,"uncle")
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<231>");
			if(((t_uncle2)!=0) && t_uncle2->m_color==-1){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<232>");
				t_node->m_parent->m_color=1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<233>");
				t_uncle2->m_color=1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<234>");
				t_uncle2->m_parent->m_color=-1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<235>");
				t_node=t_uncle2->m_parent;
			}else{
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<237>");
				if(t_node==t_node->m_parent->m_left){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<238>");
					t_node=t_node->m_parent;
					DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<239>");
					p_RotateRight(t_node);
				}
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<241>");
				t_node->m_parent->m_color=1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<242>");
				t_node->m_parent->m_parent->m_color=-1;
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<243>");
				p_RotateLeft(t_node->m_parent->m_parent);
			}
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<247>");
	m_root->m_color=1;
	return 0;
}
bool c_Map::p_Set(int t_key,c_DisplayMode* t_value){
	DBG_ENTER("Map.Set")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_LOCAL(t_value,"value")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<29>");
	c_Node* t_node=m_root;
	DBG_LOCAL(t_node,"node")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<30>");
	c_Node* t_parent=0;
	int t_cmp=0;
	DBG_LOCAL(t_parent,"parent")
	DBG_LOCAL(t_cmp,"cmp")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<32>");
	while((t_node)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<33>");
		t_parent=t_node;
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<34>");
		t_cmp=p_Compare(t_key,t_node->m_key);
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<35>");
		if(t_cmp>0){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<36>");
			t_node=t_node->m_right;
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<37>");
			if(t_cmp<0){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<38>");
				t_node=t_node->m_left;
			}else{
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<40>");
				gc_assign(t_node->m_value,t_value);
				DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<41>");
				return false;
			}
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<45>");
	t_node=(new c_Node)->m_new(t_key,t_value,-1,t_parent);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<47>");
	if((t_parent)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<48>");
		if(t_cmp>0){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<49>");
			gc_assign(t_parent->m_right,t_node);
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<51>");
			gc_assign(t_parent->m_left,t_node);
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<53>");
		p_InsertFixup(t_node);
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<55>");
		gc_assign(m_root,t_node);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<57>");
	return true;
}
bool c_Map::p_Insert(int t_key,c_DisplayMode* t_value){
	DBG_ENTER("Map.Insert")
	c_Map *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_LOCAL(t_value,"value")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<146>");
	bool t_=p_Set(t_key,t_value);
	return t_;
}
void c_Map::mark(){
	Object::mark();
	gc_mark_q(m_root);
}
String c_Map::debug(){
	String t="(Map)\n";
	t+=dbg_decl("root",&m_root);
	return t;
}
c_IntMap::c_IntMap(){
}
c_IntMap* c_IntMap::m_new(){
	DBG_ENTER("IntMap.new")
	c_IntMap *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<534>");
	c_Map::m_new();
	return this;
}
int c_IntMap::p_Compare(int t_lhs,int t_rhs){
	DBG_ENTER("IntMap.Compare")
	c_IntMap *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_lhs,"lhs")
	DBG_LOCAL(t_rhs,"rhs")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<537>");
	int t_=t_lhs-t_rhs;
	return t_;
}
void c_IntMap::mark(){
	c_Map::mark();
}
String c_IntMap::debug(){
	String t="(IntMap)\n";
	t=c_Map::debug()+t;
	return t;
}
c_Stack::c_Stack(){
	m_data=Array<c_DisplayMode* >();
	m_length=0;
}
c_Stack* c_Stack::m_new(){
	DBG_ENTER("Stack.new")
	c_Stack *self=this;
	DBG_LOCAL(self,"Self")
	return this;
}
c_Stack* c_Stack::m_new2(Array<c_DisplayMode* > t_data){
	DBG_ENTER("Stack.new")
	c_Stack *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_data,"data")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<13>");
	gc_assign(this->m_data,t_data.Slice(0));
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<14>");
	this->m_length=t_data.Length();
	return this;
}
void c_Stack::p_Push(c_DisplayMode* t_value){
	DBG_ENTER("Stack.Push")
	c_Stack *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_value,"value")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<71>");
	if(m_length==m_data.Length()){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<72>");
		gc_assign(m_data,m_data.Resize(m_length*2+10));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<74>");
	gc_assign(m_data.At(m_length),t_value);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<75>");
	m_length+=1;
}
void c_Stack::p_Push2(Array<c_DisplayMode* > t_values,int t_offset,int t_count){
	DBG_ENTER("Stack.Push")
	c_Stack *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_values,"values")
	DBG_LOCAL(t_offset,"offset")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<83>");
	for(int t_i=0;t_i<t_count;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<84>");
		p_Push(t_values.At(t_offset+t_i));
	}
}
void c_Stack::p_Push3(Array<c_DisplayMode* > t_values,int t_offset){
	DBG_ENTER("Stack.Push")
	c_Stack *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_values,"values")
	DBG_LOCAL(t_offset,"offset")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<79>");
	p_Push2(t_values,t_offset,t_values.Length()-t_offset);
}
Array<c_DisplayMode* > c_Stack::p_ToArray(){
	DBG_ENTER("Stack.ToArray")
	c_Stack *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<18>");
	Array<c_DisplayMode* > t_t=Array<c_DisplayMode* >(m_length);
	DBG_LOCAL(t_t,"t")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<19>");
	for(int t_i=0;t_i<m_length;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<20>");
		gc_assign(t_t.At(t_i),m_data.At(t_i));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<22>");
	return t_t;
}
void c_Stack::mark(){
	Object::mark();
	gc_mark_q(m_data);
}
String c_Stack::debug(){
	String t="(Stack)\n";
	t+=dbg_decl("data",&m_data);
	t+=dbg_decl("length",&m_length);
	return t;
}
c_Node::c_Node(){
	m_key=0;
	m_right=0;
	m_left=0;
	m_value=0;
	m_color=0;
	m_parent=0;
}
c_Node* c_Node::m_new(int t_key,c_DisplayMode* t_value,int t_color,c_Node* t_parent){
	DBG_ENTER("Node.new")
	c_Node *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_key,"key")
	DBG_LOCAL(t_value,"value")
	DBG_LOCAL(t_color,"color")
	DBG_LOCAL(t_parent,"parent")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<364>");
	this->m_key=t_key;
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<365>");
	gc_assign(this->m_value,t_value);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<366>");
	this->m_color=t_color;
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<367>");
	gc_assign(this->m_parent,t_parent);
	return this;
}
c_Node* c_Node::m_new2(){
	DBG_ENTER("Node.new")
	c_Node *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/map.monkey<361>");
	return this;
}
void c_Node::mark(){
	Object::mark();
	gc_mark_q(m_right);
	gc_mark_q(m_left);
	gc_mark_q(m_value);
	gc_mark_q(m_parent);
}
String c_Node::debug(){
	String t="(Node)\n";
	t+=dbg_decl("key",&m_key);
	t+=dbg_decl("value",&m_value);
	t+=dbg_decl("color",&m_color);
	t+=dbg_decl("parent",&m_parent);
	t+=dbg_decl("left",&m_left);
	t+=dbg_decl("right",&m_right);
	return t;
}
Array<c_DisplayMode* > bb_app__displayModes;
c_DisplayMode* bb_app__desktopMode;
int bb_app_DeviceWidth(){
	DBG_ENTER("DeviceWidth")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<263>");
	return bb_app__devWidth;
}
int bb_app_DeviceHeight(){
	DBG_ENTER("DeviceHeight")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<267>");
	return bb_app__devHeight;
}
void bb_app_EnumDisplayModes(){
	DBG_ENTER("EnumDisplayModes")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<33>");
	Array<BBDisplayMode* > t_modes=bb_app__game->GetDisplayModes();
	DBG_LOCAL(t_modes,"modes")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<34>");
	c_IntMap* t_mmap=(new c_IntMap)->m_new();
	DBG_LOCAL(t_mmap,"mmap")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<35>");
	c_Stack* t_mstack=(new c_Stack)->m_new();
	DBG_LOCAL(t_mstack,"mstack")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<36>");
	for(int t_i=0;t_i<t_modes.Length();t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<37>");
		int t_w=t_modes.At(t_i)->width;
		DBG_LOCAL(t_w,"w")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<38>");
		int t_h=t_modes.At(t_i)->height;
		DBG_LOCAL(t_h,"h")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<39>");
		int t_size=t_w<<16|t_h;
		DBG_LOCAL(t_size,"size")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<40>");
		if(t_mmap->p_Contains(t_size)){
			DBG_BLOCK();
		}else{
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<42>");
			c_DisplayMode* t_mode=(new c_DisplayMode)->m_new(t_modes.At(t_i)->width,t_modes.At(t_i)->height);
			DBG_LOCAL(t_mode,"mode")
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<43>");
			t_mmap->p_Insert(t_size,t_mode);
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<44>");
			t_mstack->p_Push(t_mode);
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<47>");
	gc_assign(bb_app__displayModes,t_mstack->p_ToArray());
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<48>");
	BBDisplayMode* t_mode2=bb_app__game->GetDesktopMode();
	DBG_LOCAL(t_mode2,"mode")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<49>");
	if((t_mode2)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<50>");
		gc_assign(bb_app__desktopMode,(new c_DisplayMode)->m_new(t_mode2->width,t_mode2->height));
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<52>");
		gc_assign(bb_app__desktopMode,(new c_DisplayMode)->m_new(bb_app_DeviceWidth(),bb_app_DeviceHeight()));
	}
}
gxtkGraphics* bb_graphics_renderDevice;
int bb_graphics_SetMatrix(Float t_ix,Float t_iy,Float t_jx,Float t_jy,Float t_tx,Float t_ty){
	DBG_ENTER("SetMatrix")
	DBG_LOCAL(t_ix,"ix")
	DBG_LOCAL(t_iy,"iy")
	DBG_LOCAL(t_jx,"jx")
	DBG_LOCAL(t_jy,"jy")
	DBG_LOCAL(t_tx,"tx")
	DBG_LOCAL(t_ty,"ty")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<312>");
	bb_graphics_context->m_ix=t_ix;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<313>");
	bb_graphics_context->m_iy=t_iy;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<314>");
	bb_graphics_context->m_jx=t_jx;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<315>");
	bb_graphics_context->m_jy=t_jy;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<316>");
	bb_graphics_context->m_tx=t_tx;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<317>");
	bb_graphics_context->m_ty=t_ty;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<318>");
	bb_graphics_context->m_tformed=((t_ix!=FLOAT(1.0) || t_iy!=FLOAT(0.0) || t_jx!=FLOAT(0.0) || t_jy!=FLOAT(1.0) || t_tx!=FLOAT(0.0) || t_ty!=FLOAT(0.0))?1:0);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<319>");
	bb_graphics_context->m_matDirty=1;
	return 0;
}
int bb_graphics_SetMatrix2(Array<Float > t_m){
	DBG_ENTER("SetMatrix")
	DBG_LOCAL(t_m,"m")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<308>");
	bb_graphics_SetMatrix(t_m.At(0),t_m.At(1),t_m.At(2),t_m.At(3),t_m.At(4),t_m.At(5));
	return 0;
}
int bb_graphics_SetColor(Float t_r,Float t_g,Float t_b){
	DBG_ENTER("SetColor")
	DBG_LOCAL(t_r,"r")
	DBG_LOCAL(t_g,"g")
	DBG_LOCAL(t_b,"b")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<254>");
	bb_graphics_context->m_color_r=t_r;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<255>");
	bb_graphics_context->m_color_g=t_g;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<256>");
	bb_graphics_context->m_color_b=t_b;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<257>");
	bb_graphics_renderDevice->SetColor(t_r,t_g,t_b);
	return 0;
}
int bb_graphics_SetAlpha(Float t_alpha){
	DBG_ENTER("SetAlpha")
	DBG_LOCAL(t_alpha,"alpha")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<271>");
	bb_graphics_context->m_alpha=t_alpha;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<272>");
	bb_graphics_renderDevice->SetAlpha(t_alpha);
	return 0;
}
int bb_graphics_SetBlend(int t_blend){
	DBG_ENTER("SetBlend")
	DBG_LOCAL(t_blend,"blend")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<280>");
	bb_graphics_context->m_blend=t_blend;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<281>");
	bb_graphics_renderDevice->SetBlend(t_blend);
	return 0;
}
int bb_graphics_SetScissor(Float t_x,Float t_y,Float t_width,Float t_height){
	DBG_ENTER("SetScissor")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_width,"width")
	DBG_LOCAL(t_height,"height")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<289>");
	bb_graphics_context->m_scissor_x=t_x;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<290>");
	bb_graphics_context->m_scissor_y=t_y;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<291>");
	bb_graphics_context->m_scissor_width=t_width;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<292>");
	bb_graphics_context->m_scissor_height=t_height;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<293>");
	bb_graphics_renderDevice->SetScissor(int(t_x),int(t_y),int(t_width),int(t_height));
	return 0;
}
int bb_graphics_BeginRender(){
	DBG_ENTER("BeginRender")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<225>");
	gc_assign(bb_graphics_renderDevice,bb_graphics_device);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<226>");
	bb_graphics_context->m_matrixSp=0;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<227>");
	bb_graphics_SetMatrix(FLOAT(1.0),FLOAT(0.0),FLOAT(0.0),FLOAT(1.0),FLOAT(0.0),FLOAT(0.0));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<228>");
	bb_graphics_SetColor(FLOAT(255.0),FLOAT(255.0),FLOAT(255.0));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<229>");
	bb_graphics_SetAlpha(FLOAT(1.0));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<230>");
	bb_graphics_SetBlend(0);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<231>");
	bb_graphics_SetScissor(FLOAT(0.0),FLOAT(0.0),Float(bb_app_DeviceWidth()),Float(bb_app_DeviceHeight()));
	return 0;
}
int bb_graphics_EndRender(){
	DBG_ENTER("EndRender")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<235>");
	bb_graphics_renderDevice=0;
	return 0;
}
c_BBGameEvent::c_BBGameEvent(){
}
void c_BBGameEvent::mark(){
	Object::mark();
}
String c_BBGameEvent::debug(){
	String t="(BBGameEvent)\n";
	return t;
}
void bb_app_EndApp(){
	DBG_ENTER("EndApp")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<259>");
	bbError(String());
}
c_BaseCharacters::c_BaseCharacters(){
	m_AnimationDelay=0;
	m_CommandDelay=0;
	m_BAttackGrid=Array<Array<String > >(3);
	m_SAttackGrid=Array<Array<String > >(3);
	m_SpriteSheet=0;
	m_StandSprite=0;
	m_RunningSprite=0;
	m_BAttackSprite=0;
	m_TauntSprite=0;
	m_Sprite=0;
	m_W=0;
	m_H=0;
	m_LeftFoot=0;
	m_RightFoot=0;
	m_x=FLOAT(500.0);
	m_y=FLOAT(280.0);
	m_Direction=String(L"Right",5);
	m_Action=String(L"Stand",5);
	m_LeftBind=0;
	m_RightBind=0;
	m_UpBind=0;
	m_DownBind=0;
	m_JumpBind=0;
	m_BAttackBind=0;
	m_TauntBind=0;
	m_FrameCounter=1;
	m_pcX1=0;
	m_pcY1=0;
	m_pcX2=0;
	m_pcY2=0;
	m_Ground=false;
	m_LockR=false;
	m_LockL=false;
	m_TotalJumps=2;
	m_JumpCounter=0;
	m_GravityAcc=10;
	m_Attacking=false;
	m_Speed=5;
	m_JumpSpeed=10;
	m_PreviousY=0;
	m_Touched=false;
	m_JumpLimit=0;
	m_Jumping=false;
	m_AttackType=String();
	m_AttackCooldown=false;
	m_Health=3;
}
c_BaseCharacters* c_BaseCharacters::m_new(){
	DBG_ENTER("BaseCharacters.new")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1424>");
	gc_assign(m_AnimationDelay,(new c_Timer)->m_new());
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1425>");
	gc_assign(m_CommandDelay,(new c_Timer)->m_new());
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1428>");
	for(int t_i=0;t_i<=2;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1429>");
		gc_assign(m_BAttackGrid.At(t_i),Array<String >(3));
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1433>");
	for(int t_i2=0;t_i2<=2;t_i2=t_i2+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i2,"i")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1434>");
		gc_assign(m_SAttackGrid.At(t_i2),Array<String >(3));
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1438>");
	bb_Test_Game->m_Collision->p_Load(String(L"monkey://data/BAttack.txt",25),m_BAttackGrid,2,2);
	return this;
}
int c_BaseCharacters::p_UpdateAction(){
	DBG_ENTER("BaseCharacters.UpdateAction")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1636>");
	String t_16=m_Action;
	DBG_LOCAL(t_16,"16")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1639>");
	if(t_16==String(L"Running",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1640>");
		if(m_Sprite!=m_RunningSprite){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1641>");
			if(m_Direction==String(L"Left",4)){
				DBG_BLOCK();
				m_FrameCounter=1;
			}else{
				DBG_BLOCK();
				m_FrameCounter=m_RunningSprite->p_Frames()/2;
			}
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1642>");
			gc_assign(m_Sprite,m_RunningSprite);
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1645>");
		if(t_16==String(L"Stand",5)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1646>");
			if(m_Sprite!=m_StandSprite){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1647>");
				if(m_Direction==String(L"Left",4)){
					DBG_BLOCK();
					m_FrameCounter=1;
				}else{
					DBG_BLOCK();
					m_FrameCounter=m_StandSprite->p_Frames()/2;
				}
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1648>");
				gc_assign(m_Sprite,m_StandSprite);
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1651>");
			if(t_16==String(L"BAttack",7)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1652>");
				if(m_Sprite!=m_BAttackSprite){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1653>");
					if(m_Direction==String(L"Left",4)){
						DBG_BLOCK();
						m_FrameCounter=1;
					}else{
						DBG_BLOCK();
						m_FrameCounter=m_BAttackSprite->p_Frames()/2;
					}
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1654>");
					gc_assign(m_Sprite,m_BAttackSprite);
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1657>");
				if(t_16==String(L"Taunt",5)){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1658>");
					if(m_Sprite!=m_TauntSprite){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1659>");
						if(m_Direction==String(L"Left",4)){
							DBG_BLOCK();
							m_FrameCounter=1;
						}else{
							DBG_BLOCK();
							m_FrameCounter=m_TauntSprite->p_Frames()/2;
						}
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1660>");
						gc_assign(m_Sprite,m_TauntSprite);
					}
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1663>");
					if(t_16==String(L"Jumping",7)){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1664>");
						if(m_Sprite!=m_RunningSprite){
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1665>");
							if(m_Direction==String(L"Left",4)){
								DBG_BLOCK();
								m_FrameCounter=1;
							}else{
								DBG_BLOCK();
								m_FrameCounter=m_RunningSprite->p_Frames()/2;
							}
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1666>");
							gc_assign(m_Sprite,m_RunningSprite);
						}
					}
				}
			}
		}
	}
	return 0;
}
int c_BaseCharacters::p_AnimationCycle(){
	DBG_ENTER("BaseCharacters.AnimationCycle")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1679>");
	String t_17=m_Direction;
	DBG_LOCAL(t_17,"17")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1681>");
	if(t_17==String(L"Right",5)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1684>");
		if(m_FrameCounter==m_Sprite->p_Frames()-1){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1686>");
			if((m_AnimationDelay->p_DelayCommand(100))!=0){
				DBG_BLOCK();
				m_FrameCounter=m_Sprite->p_Frames()/2;
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1690>");
			if(m_AnimationDelay->p_DelayCommand(100)==1){
				DBG_BLOCK();
				m_FrameCounter+=1;
			}
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1694>");
		if(t_17==String(L"Left",4)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1695>");
			if(m_FrameCounter==0){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1697>");
				if((m_AnimationDelay->p_DelayCommand(100))!=0){
					DBG_BLOCK();
					m_FrameCounter=m_Sprite->p_Frames()/2-1;
				}
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1701>");
				if((m_AnimationDelay->p_DelayCommand(100))!=0){
					DBG_BLOCK();
					m_FrameCounter-=1;
				}
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1706>");
			if(t_17==String(L"Down",4)){
				DBG_BLOCK();
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1708>");
				if(t_17==String(L"UP",2)){
					DBG_BLOCK();
				}
			}
		}
	}
	return 0;
}
void c_BaseCharacters::p_PlayerCollisionCheck(){
	DBG_ENTER("BaseCharacters.PlayerCollisionCheck")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1481>");
	bool t_R=false;
	DBG_LOCAL(t_R,"R")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1482>");
	bool t_L=false;
	DBG_LOCAL(t_L,"L")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1483>");
	bool t_B=false;
	DBG_LOCAL(t_B,"B")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1485>");
	int t_TileX1=0;
	DBG_LOCAL(t_TileX1,"TileX1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1486>");
	int t_TileX2=0;
	DBG_LOCAL(t_TileX2,"TileX2")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1487>");
	int t_TileY1=0;
	DBG_LOCAL(t_TileY1,"TileY1")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1488>");
	int t_TileY2=0;
	DBG_LOCAL(t_TileY2,"TileY2")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1491>");
	m_pcX1=int(m_x+Float(m_LeftFoot));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1493>");
	m_pcY1=int(m_y);
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1495>");
	m_pcX2=int(m_x+Float(m_W)-Float(m_RightFoot));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1497>");
	m_pcY2=int(m_y+Float(m_H));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1500>");
	t_B=false;
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1501>");
	t_R=false;
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1502>");
	t_L=false;
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1504>");
	String t_Tile=String();
	DBG_LOCAL(t_Tile,"Tile")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1506>");
	for(int t_yTile=0;t_yTile<=18;t_yTile=t_yTile+1){
		DBG_BLOCK();
		DBG_LOCAL(t_yTile,"yTile")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1507>");
		for(int t_xTile=0;t_xTile<=32;t_xTile=t_xTile+1){
			DBG_BLOCK();
			DBG_LOCAL(t_xTile,"xTile")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1508>");
			t_Tile=c_Game_app::m_MapGrid.At(t_xTile).At(t_yTile);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1510>");
			if(t_Tile==String(L"1",1)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1513>");
				t_TileX1=t_xTile*40;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1514>");
				t_TileX2=(t_xTile+1)*40;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1515>");
				t_TileY1=t_yTile*40;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1516>");
				t_TileY2=(t_yTile+1)*40;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1525>");
				if(t_TileX1<=m_pcX2+10 && t_TileY1<=m_pcY2-10 && m_pcX2+10<=t_TileX2 && t_TileY2>m_pcY2-10){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1528>");
					t_R=true;
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1529>");
					m_x=Float(t_TileX1+m_RightFoot-m_W-10);
				}
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1534>");
				if(t_TileX1<=m_pcX1-10 && t_TileY1<=m_pcY2-10 && m_pcX1-10<=t_TileX2 && t_TileY2>m_pcY2-10){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1536>");
					t_L=true;
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1537>");
					m_x=Float(t_TileX2-m_LeftFoot+10);
				}
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1541>");
				if(t_TileX1<=m_pcX1 && m_pcX1<=t_TileX2 && t_TileY1<=m_pcY2 && t_TileY2>=m_pcY2 || t_TileX1<=m_pcX2 && m_pcX2<=t_TileX2 && t_TileY1<=m_pcY2 && t_TileY2>=m_pcY2){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1544>");
					t_B=true;
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1546>");
					m_y=Float(t_TileY1-m_H+2);
				}
			}
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1562>");
	if(t_B==true){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1563>");
		m_Ground=true;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1567>");
		m_Ground=false;
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1570>");
	if(t_R==true){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1571>");
		m_LockR=true;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1574>");
		m_LockR=false;
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1578>");
	if(t_L==true){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1579>");
		m_LockL=true;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1581>");
		m_LockL=false;
	}
}
int c_BaseCharacters::p_Gravity(int t_GravityForce){
	DBG_ENTER("BaseCharacters.Gravity")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_GravityForce,"GravityForce")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1461>");
	if(m_Ground==true){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1463>");
		m_JumpCounter=m_TotalJumps;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1464>");
		m_y=m_y;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1466>");
		m_GravityAcc=0;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1469>");
		if(m_JumpCounter==m_TotalJumps){
			DBG_BLOCK();
			m_JumpCounter-=1;
		}
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1470>");
		m_GravityAcc+=1;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1472>");
		m_y=m_y+Float(m_GravityAcc);
	}
	return 0;
}
void c_BaseCharacters::p_KeyBinds(){
	DBG_ENTER("BaseCharacters.KeyBinds")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1755>");
	if(((bb_input_KeyDown(m_LeftBind))!=0) || ((bb_input_KeyDown(m_RightBind))!=0)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1758>");
		if(m_Speed>=13){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1760>");
			m_Speed=m_Speed;
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1763>");
			if((m_CommandDelay->p_DelayCommand2(100))!=0){
				DBG_BLOCK();
				m_Speed+=5;
			}
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1767>");
		m_Speed=2;
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1772>");
	if(((bb_input_KeyDown(m_LeftBind))!=0) && m_Attacking==false){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1774>");
		m_Direction=String(L"Left",4);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1775>");
		if(m_LockL==false){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1776>");
			m_x=m_x-Float(m_Speed);
		}
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1779>");
		m_Action=String(L"Running",7);
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1784>");
	if(((bb_input_KeyDown(m_RightBind))!=0) && m_Attacking==false){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1786>");
		m_Direction=String(L"Right",5);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1787>");
		if(m_LockR==false){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1788>");
			m_x=m_x+Float(m_Speed);
		}
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1791>");
		m_Action=String(L"Running",7);
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1796>");
	if(((bb_input_KeyHit(m_JumpBind))!=0) && m_Attacking==false){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1799>");
		if(m_JumpCounter>0){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1801>");
			m_JumpSpeed=int(FLOAT(10.0)+Float(m_GravityAcc)*FLOAT(1.5));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1802>");
			m_PreviousY=int(m_y);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1803>");
			m_Touched=false;
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1804>");
			m_JumpLimit=int(m_y-FLOAT(40.0));
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1807>");
			m_Jumping=true;
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1808>");
			m_Action=String(L"Jumping",7);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1810>");
			m_JumpCounter-=1;
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1817>");
	if((bb_input_KeyHit(m_BAttackBind))!=0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1820>");
		if(m_Attacking==false){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1822>");
			m_Action=String(L"BAttack",7);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1823>");
			m_AttackType=String(L"BAttack",7);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1824>");
			m_Attacking=true;
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1831>");
	if((bb_input_KeyDown(m_TauntBind))!=0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1833>");
		if(m_Attacking==false){
			DBG_BLOCK();
			m_Action=String(L"Taunt",5);
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1838>");
	if(bb_input_KeyDown(m_RightBind)==0 && bb_input_KeyDown(m_LeftBind)==0 && m_Ground==true && m_Attacking==false && m_Action==String(L"Running",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1840>");
		m_Action=String(L"Stand",5);
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1844>");
	if(bb_input_KeyDown(m_RightBind)==1 && bb_input_KeyDown(m_LeftBind)==1 && m_Ground==true && m_Attacking==false && m_Action==String(L"Running",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1846>");
		m_Action=String(L"Stand",5);
	}
}
void c_BaseCharacters::p_Jump(){
	DBG_ENTER("BaseCharacters.Jump")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1591>");
	if(m_Jumping==true){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1593>");
		m_y=m_y-Float(m_JumpSpeed);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1594>");
		if(Float(m_JumpLimit)<m_y==true && m_Touched==false){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1599>");
			m_JumpSpeed+=3;
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1603>");
			m_Touched=true;
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1605>");
			m_JumpSpeed-=1;
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1607>");
			if(m_Ground==true){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1608>");
				m_JumpSpeed=0;
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1609>");
				m_Action=String(L"Stand",5);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1610>");
				m_Jumping=false;
			}
		}
	}
}
int c_BaseCharacters::p_ToggleAttackCheckOff(){
	DBG_ENTER("BaseCharacters.ToggleAttackCheckOff")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1624>");
	if(m_Attacking==true && ((m_CommandDelay->p_DelayCommand(250))!=0)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1625>");
		m_Attacking=false;
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1626>");
		m_Action=String(L"Stand",5);
	}
	return 0;
}
int c_BaseCharacters::p_AttackCldwn(){
	DBG_ENTER("BaseCharacters.AttackCldwn")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1718>");
	if(m_AttackCooldown==true){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1719>");
		if((m_CommandDelay->p_DelayCommand2(500))!=0){
			DBG_BLOCK();
			m_AttackCooldown=false;
		}
	}
	return 0;
}
int c_BaseCharacters::p_OnDmgTaken(){
	DBG_ENTER("BaseCharacters.OnDmgTaken")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1727>");
	String t_18=m_AttackType;
	DBG_LOCAL(t_18,"18")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1730>");
	if(t_18==String(L"BAttack",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1733>");
		if(m_Health>0 && m_AttackCooldown==false){
			DBG_BLOCK();
			m_Health-=1;
		}
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1734>");
		m_AttackCooldown=true;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1736>");
		if(t_18==String(L"SPAttack",8)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1738>");
			if(m_Health>0){
				DBG_BLOCK();
				m_Health-=2;
			}
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1740>");
			if(t_18==String(L"Other",5)){
				DBG_BLOCK();
			}
		}
	}
	return 0;
}
int c_BaseCharacters::p_Death(){
	DBG_ENTER("BaseCharacters.Death")
	c_BaseCharacters *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1445>");
	if(m_Health==0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1447>");
		m_x=FLOAT(700.0);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1449>");
		m_y=FLOAT(100.0);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1450>");
		m_Health=3;
	}
	return 0;
}
void c_BaseCharacters::mark(){
	Object::mark();
	gc_mark_q(m_AnimationDelay);
	gc_mark_q(m_CommandDelay);
	gc_mark_q(m_BAttackGrid);
	gc_mark_q(m_SAttackGrid);
	gc_mark_q(m_SpriteSheet);
	gc_mark_q(m_StandSprite);
	gc_mark_q(m_RunningSprite);
	gc_mark_q(m_BAttackSprite);
	gc_mark_q(m_TauntSprite);
	gc_mark_q(m_Sprite);
}
String c_BaseCharacters::debug(){
	String t="(BaseCharacters)\n";
	t+=dbg_decl("SpriteSheet",&m_SpriteSheet);
	t+=dbg_decl("StandSprite",&m_StandSprite);
	t+=dbg_decl("RunningSprite",&m_RunningSprite);
	t+=dbg_decl("BAttackSprite",&m_BAttackSprite);
	t+=dbg_decl("TauntSprite",&m_TauntSprite);
	t+=dbg_decl("Health",&m_Health);
	t+=dbg_decl("x",&m_x);
	t+=dbg_decl("y",&m_y);
	t+=dbg_decl("W",&m_W);
	t+=dbg_decl("H",&m_H);
	t+=dbg_decl("Speed",&m_Speed);
	t+=dbg_decl("pcX1",&m_pcX1);
	t+=dbg_decl("pcY1",&m_pcY1);
	t+=dbg_decl("pcX2",&m_pcX2);
	t+=dbg_decl("pcY2",&m_pcY2);
	t+=dbg_decl("LeftFoot",&m_LeftFoot);
	t+=dbg_decl("RightFoot",&m_RightFoot);
	t+=dbg_decl("Ground",&m_Ground);
	t+=dbg_decl("TotalJumps",&m_TotalJumps);
	t+=dbg_decl("JumpCounter",&m_JumpCounter);
	t+=dbg_decl("JumpLimit",&m_JumpLimit);
	t+=dbg_decl("Jumping",&m_Jumping);
	t+=dbg_decl("JumpSpeed",&m_JumpSpeed);
	t+=dbg_decl("PreviousY",&m_PreviousY);
	t+=dbg_decl("Touched",&m_Touched);
	t+=dbg_decl("GravityAcc",&m_GravityAcc);
	t+=dbg_decl("LeftBind",&m_LeftBind);
	t+=dbg_decl("RightBind",&m_RightBind);
	t+=dbg_decl("UpBind",&m_UpBind);
	t+=dbg_decl("DownBind",&m_DownBind);
	t+=dbg_decl("JumpBind",&m_JumpBind);
	t+=dbg_decl("BAttackBind",&m_BAttackBind);
	t+=dbg_decl("TauntBind",&m_TauntBind);
	t+=dbg_decl("LockR",&m_LockR);
	t+=dbg_decl("LockL",&m_LockL);
	t+=dbg_decl("FrameCounter",&m_FrameCounter);
	t+=dbg_decl("Direction",&m_Direction);
	t+=dbg_decl("Action",&m_Action);
	t+=dbg_decl("Sprite",&m_Sprite);
	t+=dbg_decl("AnimationDelay",&m_AnimationDelay);
	t+=dbg_decl("CommandDelay",&m_CommandDelay);
	t+=dbg_decl("Attacking",&m_Attacking);
	t+=dbg_decl("BAttackGrid",&m_BAttackGrid);
	t+=dbg_decl("SAttackGrid",&m_SAttackGrid);
	t+=dbg_decl("AttackType",&m_AttackType);
	t+=dbg_decl("AttackCooldown",&m_AttackCooldown);
	return t;
}
c_Timer::c_Timer(){
	m_TimeAnimation=FLOAT(.0);
	m_i=FLOAT(0.0);
	m_TimeCommand=FLOAT(.0);
	m_TimeCommand2=FLOAT(.0);
}
c_Timer* c_Timer::m_new(){
	DBG_ENTER("Timer.new")
	c_Timer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1194>");
	return this;
}
int c_Timer::p_DelayAnimation(int t_Offset){
	DBG_ENTER("Timer.DelayAnimation")
	c_Timer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_Offset,"Offset")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1249>");
	if(m_TimeAnimation<Float(bb_app_Millisecs())){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1252>");
		m_TimeAnimation=Float(bb_app_Millisecs()+t_Offset);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1253>");
		return 1;
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1259>");
		return 0;
	}
}
int c_Timer::p_DelayCommand(int t_Offset){
	DBG_ENTER("Timer.DelayCommand")
	c_Timer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_Offset,"Offset")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1206>");
	if(m_i==FLOAT(0.0)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1207>");
		if(m_TimeCommand<Float(bb_app_Millisecs())){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1208>");
			m_TimeCommand=Float(bb_app_Millisecs());
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1209>");
			m_TimeCommand=m_TimeCommand+Float(t_Offset);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1210>");
			m_i=m_i+FLOAT(1.0);
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1215>");
		if(m_TimeCommand<Float(bb_app_Millisecs())){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1216>");
			m_i=FLOAT(0.0);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1217>");
			return 1;
		}
	}
	return 0;
}
int c_Timer::p_DelayCommand2(int t_Offset){
	DBG_ENTER("Timer.DelayCommand2")
	c_Timer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_Offset,"Offset")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1227>");
	if(m_i==FLOAT(0.0)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1228>");
		if(m_TimeCommand2<Float(bb_app_Millisecs())){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1231>");
			m_TimeCommand2=Float(bb_app_Millisecs());
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1232>");
			m_TimeCommand2=m_TimeCommand2+Float(t_Offset);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1233>");
			m_i=m_i+FLOAT(1.0);
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1238>");
		if(m_TimeCommand2<Float(bb_app_Millisecs())){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1239>");
			m_i=FLOAT(0.0);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1240>");
			return 1;
		}
	}
	return 0;
}
void c_Timer::mark(){
	Object::mark();
}
String c_Timer::debug(){
	String t="(Timer)\n";
	t+=dbg_decl("TimeCommand",&m_TimeCommand);
	t+=dbg_decl("TimeCommand2",&m_TimeCommand2);
	t+=dbg_decl("TimeAnimation",&m_TimeAnimation);
	t+=dbg_decl("i",&m_i);
	return t;
}
c_CollisionReader::c_CollisionReader(){
	m_CollisionBlock=0;
	m_BackgroundBlock=0;
}
int c_CollisionReader::p_Load(String t_Path,Array<Array<String > > t_Grid,int t_FileW,int t_FileH){
	DBG_ENTER("CollisionReader.Load")
	c_CollisionReader *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_Path,"Path")
	DBG_LOCAL(t_Grid,"Grid")
	DBG_LOCAL(t_FileW,"FileW")
	DBG_LOCAL(t_FileH,"FileH")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1104>");
	c_FileStream* t_File=0;
	DBG_LOCAL(t_File,"File")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1105>");
	String t_Data=String();
	DBG_LOCAL(t_Data,"Data")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1106>");
	Array<String > t_DataItem=Array<String >();
	DBG_LOCAL(t_DataItem,"DataItem")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1108>");
	t_File=c_FileStream::m_Open(t_Path,String(L"r",1));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1109>");
	t_Data=t_File->p_ReadString2(String(L"utf8",4));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1110>");
	t_File->p_Close();
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1112>");
	t_DataItem=t_Data.Split(String(L"\n",1));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1114>");
	for(int t_y=0;t_y<=t_FileH-1;t_y=t_y+1){
		DBG_BLOCK();
		DBG_LOCAL(t_y,"y")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1115>");
		for(int t_x=0;t_x<=t_FileW-1;t_x=t_x+1){
			DBG_BLOCK();
			DBG_LOCAL(t_x,"x")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1116>");
			t_Grid.At(t_x).At(t_y)=String((t_DataItem.At(t_y).Slice(t_x,t_x+1)).ToInt());
		}
	}
	return 0;
}
c_CollisionReader* c_CollisionReader::m_new(){
	DBG_ENTER("CollisionReader.new")
	c_CollisionReader *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1091>");
	gc_assign(m_CollisionBlock,bb_graphics_LoadImage(String(L"CollisionBlock.png",18),1,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1092>");
	gc_assign(m_BackgroundBlock,bb_graphics_LoadImage(String(L"BackgroundBlock.png",19),1,c_Image::m_DefaultFlags));
	return this;
}
int c_CollisionReader::p_Draw(Array<Array<String > > t_Grid,int t_FileW,int t_FileH,int t_BlockSize,int t_OffSetx,int t_OffSety){
	DBG_ENTER("CollisionReader.Draw")
	c_CollisionReader *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_Grid,"Grid")
	DBG_LOCAL(t_FileW,"FileW")
	DBG_LOCAL(t_FileH,"FileH")
	DBG_LOCAL(t_BlockSize,"BlockSize")
	DBG_LOCAL(t_OffSetx,"OffSetx")
	DBG_LOCAL(t_OffSety,"OffSety")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1126>");
	String t_Tile=String();
	DBG_LOCAL(t_Tile,"Tile")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1128>");
	for(int t_y=0;t_y<=t_FileH;t_y=t_y+1){
		DBG_BLOCK();
		DBG_LOCAL(t_y,"y")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1129>");
		for(int t_x=0;t_x<=t_FileW;t_x=t_x+1){
			DBG_BLOCK();
			DBG_LOCAL(t_x,"x")
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1130>");
			t_Tile=t_Grid.At(t_x).At(t_y);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1131>");
			if(t_Tile==String(L"0",1)){
				DBG_BLOCK();
				bb_graphics_DrawImage(m_BackgroundBlock,Float(t_x*t_BlockSize+t_OffSetx),Float(t_y*t_BlockSize+t_OffSety),0);
			}
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1132>");
			if(t_Tile==String(L"1",1)){
				DBG_BLOCK();
				bb_graphics_DrawImage(m_CollisionBlock,Float(t_x*t_BlockSize+t_OffSetx),Float(t_y*t_BlockSize+t_OffSety),0);
			}
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1133>");
			if(t_Tile==String(L"2",1)){
				DBG_BLOCK();
				bb_graphics_DrawImage(m_CollisionBlock,Float(t_x*t_BlockSize+t_OffSetx),Float(t_y*t_BlockSize+t_OffSety),0);
			}
		}
	}
	return 0;
}
void c_CollisionReader::mark(){
	Object::mark();
	gc_mark_q(m_CollisionBlock);
	gc_mark_q(m_BackgroundBlock);
}
String c_CollisionReader::debug(){
	String t="(CollisionReader)\n";
	t+=dbg_decl("CollisionBlock",&m_CollisionBlock);
	t+=dbg_decl("BackgroundBlock",&m_BackgroundBlock);
	return t;
}
c_Stream::c_Stream(){
}
c_Stream* c_Stream::m_new(){
	DBG_ENTER("Stream.new")
	c_Stream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<31>");
	return this;
}
void c_Stream::p_ReadError(){
	DBG_ENTER("Stream.ReadError")
	c_Stream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<188>");
	throw (new c_StreamReadError)->m_new(this);
}
void c_Stream::p_ReadAll(c_DataBuffer* t_buffer,int t_offset,int t_count){
	DBG_ENTER("Stream.ReadAll")
	c_Stream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_buffer,"buffer")
	DBG_LOCAL(t_offset,"offset")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<48>");
	while(t_count>0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<49>");
		int t_n=p_Read(t_buffer,t_offset,t_count);
		DBG_LOCAL(t_n,"n")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<50>");
		if(t_n<=0){
			DBG_BLOCK();
			p_ReadError();
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<51>");
		t_offset+=t_n;
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<52>");
		t_count-=t_n;
	}
}
c_DataBuffer* c_Stream::p_ReadAll2(){
	DBG_ENTER("Stream.ReadAll")
	c_Stream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<57>");
	c_Stack2* t_bufs=(new c_Stack2)->m_new();
	DBG_LOCAL(t_bufs,"bufs")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<58>");
	c_DataBuffer* t_buf=(new c_DataBuffer)->m_new(4096);
	int t_off=0;
	int t_len=0;
	DBG_LOCAL(t_buf,"buf")
	DBG_LOCAL(t_off,"off")
	DBG_LOCAL(t_len,"len")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<59>");
	do{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<60>");
		int t_n=p_Read(t_buf,t_off,4096-t_off);
		DBG_LOCAL(t_n,"n")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<61>");
		if(t_n<=0){
			DBG_BLOCK();
			break;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<62>");
		t_off+=t_n;
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<63>");
		t_len+=t_n;
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<64>");
		if(t_off==4096){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<65>");
			t_off=0;
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<66>");
			t_bufs->p_Push4(t_buf);
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<67>");
			t_buf=(new c_DataBuffer)->m_new(4096);
		}
	}while(!(false));
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<70>");
	c_DataBuffer* t_data=(new c_DataBuffer)->m_new(t_len);
	DBG_LOCAL(t_data,"data")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<71>");
	t_off=0;
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<72>");
	c_Enumerator* t_=t_bufs->p_ObjectEnumerator();
	while(t_->p_HasNext()){
		DBG_BLOCK();
		c_DataBuffer* t_tbuf=t_->p_NextObject();
		DBG_LOCAL(t_tbuf,"tbuf")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<73>");
		t_tbuf->p_CopyBytes(0,t_data,t_off,4096);
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<74>");
		t_tbuf->Discard();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<75>");
		t_off+=4096;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<77>");
	t_buf->p_CopyBytes(0,t_data,t_off,t_len-t_off);
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<78>");
	t_buf->Discard();
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<79>");
	return t_data;
}
String c_Stream::p_ReadString(int t_count,String t_encoding){
	DBG_ENTER("Stream.ReadString")
	c_Stream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_count,"count")
	DBG_LOCAL(t_encoding,"encoding")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<120>");
	c_DataBuffer* t_buf=(new c_DataBuffer)->m_new(t_count);
	DBG_LOCAL(t_buf,"buf")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<121>");
	p_ReadAll(t_buf,0,t_count);
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<122>");
	String t_=t_buf->p_PeekString2(0,t_encoding);
	return t_;
}
String c_Stream::p_ReadString2(String t_encoding){
	DBG_ENTER("Stream.ReadString")
	c_Stream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_encoding,"encoding")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<126>");
	c_DataBuffer* t_buf=p_ReadAll2();
	DBG_LOCAL(t_buf,"buf")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<127>");
	String t_=t_buf->p_PeekString2(0,t_encoding);
	return t_;
}
void c_Stream::mark(){
	Object::mark();
}
String c_Stream::debug(){
	String t="(Stream)\n";
	return t;
}
c_FileStream::c_FileStream(){
	m__stream=0;
}
BBFileStream* c_FileStream::m_OpenStream(String t_path,String t_mode){
	DBG_ENTER("FileStream.OpenStream")
	DBG_LOCAL(t_path,"path")
	DBG_LOCAL(t_mode,"mode")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<79>");
	BBFileStream* t_stream=(new BBFileStream);
	DBG_LOCAL(t_stream,"stream")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<80>");
	String t_fmode=t_mode;
	DBG_LOCAL(t_fmode,"fmode")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<81>");
	if(t_fmode==String(L"a",1)){
		DBG_BLOCK();
		t_fmode=String(L"u",1);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<82>");
	if(!t_stream->Open(t_path,t_fmode)){
		DBG_BLOCK();
		return 0;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<83>");
	if(t_mode==String(L"a",1)){
		DBG_BLOCK();
		t_stream->Seek(t_stream->Length());
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<84>");
	return t_stream;
}
c_FileStream* c_FileStream::m_new(String t_path,String t_mode){
	DBG_ENTER("FileStream.new")
	c_FileStream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_path,"path")
	DBG_LOCAL(t_mode,"mode")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<31>");
	c_Stream::m_new();
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<32>");
	gc_assign(m__stream,m_OpenStream(t_path,t_mode));
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<33>");
	if(!((m__stream)!=0)){
		DBG_BLOCK();
		bbError(String(L"Failed to open stream",21));
	}
	return this;
}
c_FileStream* c_FileStream::m_new2(BBFileStream* t_stream){
	DBG_ENTER("FileStream.new")
	c_FileStream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_stream,"stream")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<74>");
	c_Stream::m_new();
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<75>");
	gc_assign(m__stream,t_stream);
	return this;
}
c_FileStream* c_FileStream::m_new3(){
	DBG_ENTER("FileStream.new")
	c_FileStream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<29>");
	c_Stream::m_new();
	return this;
}
c_FileStream* c_FileStream::m_Open(String t_path,String t_mode){
	DBG_ENTER("FileStream.Open")
	DBG_LOCAL(t_path,"path")
	DBG_LOCAL(t_mode,"mode")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<67>");
	BBFileStream* t_stream=m_OpenStream(t_path,t_mode);
	DBG_LOCAL(t_stream,"stream")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<68>");
	if((t_stream)!=0){
		DBG_BLOCK();
		c_FileStream* t_=(new c_FileStream)->m_new2(t_stream);
		return t_;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<69>");
	return 0;
}
void c_FileStream::p_Close(){
	DBG_ENTER("FileStream.Close")
	c_FileStream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<37>");
	if(!((m__stream)!=0)){
		DBG_BLOCK();
		return;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<38>");
	m__stream->Close();
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<39>");
	m__stream=0;
}
int c_FileStream::p_Read(c_DataBuffer* t_buffer,int t_offset,int t_count){
	DBG_ENTER("FileStream.Read")
	c_FileStream *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_buffer,"buffer")
	DBG_LOCAL(t_offset,"offset")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/filestream.monkey<59>");
	int t_=m__stream->Read(t_buffer,t_offset,t_count);
	return t_;
}
void c_FileStream::mark(){
	c_Stream::mark();
	gc_mark_q(m__stream);
}
String c_FileStream::debug(){
	String t="(FileStream)\n";
	t=c_Stream::debug()+t;
	t+=dbg_decl("_stream",&m__stream);
	return t;
}
c_DataBuffer::c_DataBuffer(){
}
c_DataBuffer* c_DataBuffer::m_new(int t_length){
	DBG_ENTER("DataBuffer.new")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_length,"length")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<94>");
	if(!_New(t_length)){
		DBG_BLOCK();
		bbError(String(L"Allocate DataBuffer failed",26));
	}
	return this;
}
c_DataBuffer* c_DataBuffer::m_new2(){
	DBG_ENTER("DataBuffer.new")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<91>");
	return this;
}
void c_DataBuffer::p_CopyBytes(int t_address,c_DataBuffer* t_dst,int t_dstaddress,int t_count){
	DBG_ENTER("DataBuffer.CopyBytes")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_address,"address")
	DBG_LOCAL(t_dst,"dst")
	DBG_LOCAL(t_dstaddress,"dstaddress")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<114>");
	if(t_address+t_count>Length()){
		DBG_BLOCK();
		t_count=Length()-t_address;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<115>");
	if(t_dstaddress+t_count>t_dst->Length()){
		DBG_BLOCK();
		t_count=t_dst->Length()-t_dstaddress;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<117>");
	if(t_dstaddress<=t_address){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<118>");
		for(int t_i=0;t_i<t_count;t_i=t_i+1){
			DBG_BLOCK();
			DBG_LOCAL(t_i,"i")
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<119>");
			t_dst->PokeByte(t_dstaddress+t_i,PeekByte(t_address+t_i));
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<122>");
		for(int t_i2=t_count-1;t_i2>=0;t_i2=t_i2+-1){
			DBG_BLOCK();
			DBG_LOCAL(t_i2,"i")
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<123>");
			t_dst->PokeByte(t_dstaddress+t_i2,PeekByte(t_address+t_i2));
		}
	}
}
void c_DataBuffer::p_PeekBytes(int t_address,Array<int > t_bytes,int t_offset,int t_count){
	DBG_ENTER("DataBuffer.PeekBytes")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_address,"address")
	DBG_LOCAL(t_bytes,"bytes")
	DBG_LOCAL(t_offset,"offset")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<137>");
	if(t_address+t_count>Length()){
		DBG_BLOCK();
		t_count=Length()-t_address;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<138>");
	if(t_offset+t_count>t_bytes.Length()){
		DBG_BLOCK();
		t_count=t_bytes.Length()-t_offset;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<139>");
	for(int t_i=0;t_i<t_count;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<140>");
		t_bytes.At(t_offset+t_i)=PeekByte(t_address+t_i);
	}
}
Array<int > c_DataBuffer::p_PeekBytes2(int t_address,int t_count){
	DBG_ENTER("DataBuffer.PeekBytes")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_address,"address")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<130>");
	if(t_address+t_count>Length()){
		DBG_BLOCK();
		t_count=Length()-t_address;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<131>");
	Array<int > t_bytes=Array<int >(t_count);
	DBG_LOCAL(t_bytes,"bytes")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<132>");
	p_PeekBytes(t_address,t_bytes,0,t_count);
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<133>");
	return t_bytes;
}
String c_DataBuffer::p_PeekString(int t_address,int t_count,String t_encoding){
	DBG_ENTER("DataBuffer.PeekString")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_address,"address")
	DBG_LOCAL(t_count,"count")
	DBG_LOCAL(t_encoding,"encoding")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<206>");
	String t_1=t_encoding;
	DBG_LOCAL(t_1,"1")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<207>");
	if(t_1==String(L"utf8",4)){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<208>");
		Array<int > t_p=p_PeekBytes2(t_address,t_count);
		DBG_LOCAL(t_p,"p")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<209>");
		int t_i=0;
		int t_e=t_p.Length();
		bool t_err=false;
		DBG_LOCAL(t_i,"i")
		DBG_LOCAL(t_e,"e")
		DBG_LOCAL(t_err,"err")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<210>");
		Array<int > t_q=Array<int >(t_e);
		int t_j=0;
		DBG_LOCAL(t_q,"q")
		DBG_LOCAL(t_j,"j")
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<211>");
		while(t_i<t_e){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<212>");
			int t_c=t_p.At(t_i)&255;
			DBG_LOCAL(t_c,"c")
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<213>");
			t_i+=1;
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<214>");
			if((t_c&128)!=0){
				DBG_BLOCK();
				DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<215>");
				if((t_c&224)==192){
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<216>");
					if(t_i>=t_e || (t_p.At(t_i)&192)!=128){
						DBG_BLOCK();
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<217>");
						t_err=true;
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<218>");
						break;
					}
					DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<220>");
					t_c=(t_c&31)<<6|t_p.At(t_i)&63;
					DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<221>");
					t_i+=1;
				}else{
					DBG_BLOCK();
					DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<222>");
					if((t_c&240)==224){
						DBG_BLOCK();
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<223>");
						if(t_i+1>=t_e || (t_p.At(t_i)&192)!=128 || (t_p.At(t_i+1)&192)!=128){
							DBG_BLOCK();
							DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<224>");
							t_err=true;
							DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<225>");
							break;
						}
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<227>");
						t_c=(t_c&15)<<12|(t_p.At(t_i)&63)<<6|t_p.At(t_i+1)&63;
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<228>");
						t_i+=2;
					}else{
						DBG_BLOCK();
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<230>");
						t_err=true;
						DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<231>");
						break;
					}
				}
			}
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<234>");
			t_q.At(t_j)=t_c;
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<235>");
			t_j+=1;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<237>");
		if(t_err){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<239>");
			String t_=String::FromChars(t_p);
			return t_;
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<241>");
		if(t_j<t_e){
			DBG_BLOCK();
			t_q=t_q.Slice(0,t_j);
		}
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<242>");
		String t_2=String::FromChars(t_q);
		return t_2;
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<243>");
		if(t_1==String(L"ascii",5)){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<244>");
			Array<int > t_p2=p_PeekBytes2(t_address,t_count);
			DBG_LOCAL(t_p2,"p")
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<245>");
			for(int t_i2=0;t_i2<t_p2.Length();t_i2=t_i2+1){
				DBG_BLOCK();
				DBG_LOCAL(t_i2,"i")
				DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<246>");
				t_p2.At(t_i2)&=255;
			}
			DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<248>");
			String t_3=String::FromChars(t_p2);
			return t_3;
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<251>");
	bbError(String(L"Invalid string encoding:",24)+t_encoding);
	return String();
}
String c_DataBuffer::p_PeekString2(int t_address,String t_encoding){
	DBG_ENTER("DataBuffer.PeekString")
	c_DataBuffer *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_address,"address")
	DBG_LOCAL(t_encoding,"encoding")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/databuffer.monkey<201>");
	String t_=p_PeekString(t_address,Length()-t_address,t_encoding);
	return t_;
}
void c_DataBuffer::mark(){
	BBDataBuffer::mark();
}
String c_DataBuffer::debug(){
	String t="(DataBuffer)\n";
	return t;
}
c_StreamError::c_StreamError(){
	m__stream=0;
}
c_StreamError* c_StreamError::m_new(c_Stream* t_stream){
	DBG_ENTER("StreamError.new")
	c_StreamError *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_stream,"stream")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<200>");
	gc_assign(m__stream,t_stream);
	return this;
}
c_StreamError* c_StreamError::m_new2(){
	DBG_ENTER("StreamError.new")
	c_StreamError *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<197>");
	return this;
}
void c_StreamError::mark(){
	ThrowableObject::mark();
	gc_mark_q(m__stream);
}
String c_StreamError::debug(){
	String t="(StreamError)\n";
	t+=dbg_decl("_stream",&m__stream);
	return t;
}
c_StreamReadError::c_StreamReadError(){
}
c_StreamReadError* c_StreamReadError::m_new(c_Stream* t_stream){
	DBG_ENTER("StreamReadError.new")
	c_StreamReadError *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_stream,"stream")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<217>");
	c_StreamError::m_new(t_stream);
	return this;
}
c_StreamReadError* c_StreamReadError::m_new2(){
	DBG_ENTER("StreamReadError.new")
	c_StreamReadError *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/brl/stream.monkey<214>");
	c_StreamError::m_new2();
	return this;
}
void c_StreamReadError::mark(){
	c_StreamError::mark();
}
String c_StreamReadError::debug(){
	String t="(StreamReadError)\n";
	t=c_StreamError::debug()+t;
	return t;
}
c_Stack2::c_Stack2(){
	m_data=Array<c_DataBuffer* >();
	m_length=0;
}
c_Stack2* c_Stack2::m_new(){
	DBG_ENTER("Stack.new")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	return this;
}
c_Stack2* c_Stack2::m_new2(Array<c_DataBuffer* > t_data){
	DBG_ENTER("Stack.new")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_data,"data")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<13>");
	gc_assign(this->m_data,t_data.Slice(0));
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<14>");
	this->m_length=t_data.Length();
	return this;
}
void c_Stack2::p_Push4(c_DataBuffer* t_value){
	DBG_ENTER("Stack.Push")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_value,"value")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<71>");
	if(m_length==m_data.Length()){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<72>");
		gc_assign(m_data,m_data.Resize(m_length*2+10));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<74>");
	gc_assign(m_data.At(m_length),t_value);
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<75>");
	m_length+=1;
}
void c_Stack2::p_Push5(Array<c_DataBuffer* > t_values,int t_offset,int t_count){
	DBG_ENTER("Stack.Push")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_values,"values")
	DBG_LOCAL(t_offset,"offset")
	DBG_LOCAL(t_count,"count")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<83>");
	for(int t_i=0;t_i<t_count;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<84>");
		p_Push4(t_values.At(t_offset+t_i));
	}
}
void c_Stack2::p_Push6(Array<c_DataBuffer* > t_values,int t_offset){
	DBG_ENTER("Stack.Push")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_values,"values")
	DBG_LOCAL(t_offset,"offset")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<79>");
	p_Push5(t_values,t_offset,t_values.Length()-t_offset);
}
c_Enumerator* c_Stack2::p_ObjectEnumerator(){
	DBG_ENTER("Stack.ObjectEnumerator")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<188>");
	c_Enumerator* t_=(new c_Enumerator)->m_new(this);
	return t_;
}
c_DataBuffer* c_Stack2::m_NIL;
void c_Stack2::p_Length(int t_newlength){
	DBG_ENTER("Stack.Length")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_newlength,"newlength")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<45>");
	if(t_newlength<m_length){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<46>");
		for(int t_i=t_newlength;t_i<m_length;t_i=t_i+1){
			DBG_BLOCK();
			DBG_LOCAL(t_i,"i")
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<47>");
			gc_assign(m_data.At(t_i),m_NIL);
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<49>");
		if(t_newlength>m_data.Length()){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<50>");
			gc_assign(m_data,m_data.Resize(bb_math_Max(m_length*2+10,t_newlength)));
		}
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<52>");
	m_length=t_newlength;
}
int c_Stack2::p_Length2(){
	DBG_ENTER("Stack.Length")
	c_Stack2 *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<56>");
	return m_length;
}
void c_Stack2::mark(){
	Object::mark();
	gc_mark_q(m_data);
}
String c_Stack2::debug(){
	String t="(Stack)\n";
	t+=dbg_decl("NIL",&c_Stack2::m_NIL);
	t+=dbg_decl("data",&m_data);
	t+=dbg_decl("length",&m_length);
	return t;
}
c_Enumerator::c_Enumerator(){
	m_stack=0;
	m_index=0;
}
c_Enumerator* c_Enumerator::m_new(c_Stack2* t_stack){
	DBG_ENTER("Enumerator.new")
	c_Enumerator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_stack,"stack")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<259>");
	gc_assign(this->m_stack,t_stack);
	return this;
}
c_Enumerator* c_Enumerator::m_new2(){
	DBG_ENTER("Enumerator.new")
	c_Enumerator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<256>");
	return this;
}
bool c_Enumerator::p_HasNext(){
	DBG_ENTER("Enumerator.HasNext")
	c_Enumerator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<263>");
	bool t_=m_index<m_stack->p_Length2();
	return t_;
}
c_DataBuffer* c_Enumerator::p_NextObject(){
	DBG_ENTER("Enumerator.NextObject")
	c_Enumerator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<267>");
	m_index+=1;
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/stack.monkey<268>");
	c_DataBuffer* t_=m_stack->m_data.At(m_index-1);
	return t_;
}
void c_Enumerator::mark(){
	Object::mark();
	gc_mark_q(m_stack);
}
String c_Enumerator::debug(){
	String t="(Enumerator)\n";
	t+=dbg_decl("stack",&m_stack);
	t+=dbg_decl("index",&m_index);
	return t;
}
int bb_math_Max(int t_x,int t_y){
	DBG_ENTER("Max")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/math.monkey<56>");
	if(t_x>t_y){
		DBG_BLOCK();
		return t_x;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/math.monkey<57>");
	return t_y;
}
Float bb_math_Max2(Float t_x,Float t_y){
	DBG_ENTER("Max")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/math.monkey<83>");
	if(t_x>t_y){
		DBG_BLOCK();
		return t_x;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/monkey/math.monkey<84>");
	return t_y;
}
c_MenuCreator::c_MenuCreator(){
	m_Height=0;
	m_MenuImage=0;
	m_Width=0;
	m_xM=0;
	m_yM=0;
	m_MenuPoscition=Array<Array<String > >();
	m_Delay=0;
	m_AnimationFrame=0;
}
c_MenuCreator* c_MenuCreator::m_new(){
	DBG_ENTER("MenuCreator.new")
	c_MenuCreator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<907>");
	gc_assign(m_Delay,(new c_Timer)->m_new());
	return this;
}
int c_MenuCreator::p_CreateArray(){
	DBG_ENTER("MenuCreator.CreateArray")
	c_MenuCreator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<914>");
	gc_assign(m_MenuPoscition,Array<Array<String > >(m_Width));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<916>");
	for(int t_i=0;t_i<m_Width;t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<917>");
		gc_assign(m_MenuPoscition.At(t_i),Array<String >(m_Height));
	}
	return 0;
}
int c_MenuCreator::p_AnimationCycle(){
	DBG_ENTER("MenuCreator.AnimationCycle")
	c_MenuCreator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<972>");
	if(m_AnimationFrame==m_MenuImage->p_Frames()-1){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<974>");
		if((m_Delay->p_DelayAnimation(400))!=0){
			DBG_BLOCK();
			m_AnimationFrame=0;
		}
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<978>");
		if((m_Delay->p_DelayAnimation(400))!=0){
			DBG_BLOCK();
			m_AnimationFrame+=1;
		}
	}
	return 0;
}
int c_MenuCreator::p_MenuButtons(){
	DBG_ENTER("MenuCreator.MenuButtons")
	c_MenuCreator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<927>");
	if((bb_input_KeyHit(38))!=0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<929>");
		if(m_yM<=0){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<930>");
			m_yM=m_Height-1;
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<932>");
			m_yM-=1;
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<936>");
	if((bb_input_KeyHit(40))!=0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<938>");
		if(m_yM>=m_Height-1){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<939>");
			m_yM=0;
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<941>");
			m_yM+=1;
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<946>");
	if((bb_input_KeyHit(39))!=0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<949>");
		if(m_xM>=m_Width-1){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<950>");
			m_xM=0;
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<952>");
			m_xM+=1;
		}
	}
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<957>");
	if((bb_input_KeyHit(37))!=0){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<960>");
		if(m_xM<=0){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<961>");
			m_xM=m_Width-1;
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<963>");
			m_xM-=1;
		}
	}
	return 0;
}
int c_MenuCreator::p_Enter(){
	DBG_ENTER("MenuCreator.Enter")
	c_MenuCreator *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<989>");
	String t_15=m_MenuPoscition.At(m_xM).At(m_yM);
	DBG_LOCAL(t_15,"15")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<992>");
	if(t_15==String(L"NewGame",7)){
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<993>");
		bb_Test_Game->m_ToState=String(L"CharacterSelect",15);
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<994>");
		bb_Test_Game->m_GameState=String(L"Loading",7);
	}else{
		DBG_BLOCK();
		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<996>");
		if(t_15==String(L"LoadGame",8)){
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<997>");
			bb_Test_Game->m_SelectedPlayerP1=String(L"Jennid",6);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<998>");
			bb_Test_Game->m_SelectedPlayerP2=String(L"Jennid",6);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1000>");
			bb_Test_Game->m_ToState=String(L"Game",4);
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1001>");
			bb_Test_Game->m_GameState=String(L"Loading",7);
		}else{
			DBG_BLOCK();
			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1002>");
			if(t_15==String(L"Settings",8)){
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1003>");
				bb_Test_Game->m_ToState=String(L"Settings",8);
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1004>");
				bb_Test_Game->m_GameState=String(L"Loading",7);
			}else{
				DBG_BLOCK();
				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1005>");
				if(t_15==String(L"About",5)){
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1006>");
					bb_Test_Game->m_ToState=String(L"About",5);
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1007>");
					bb_Test_Game->m_GameState=String(L"Loading",7);
				}else{
					DBG_BLOCK();
					DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1008>");
					if(t_15==String(L"Exit",4)){
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1009>");
						bb_app_EndApp();
					}else{
						DBG_BLOCK();
						DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1012>");
						if(t_15==String(L"P1Char1",7)){
							DBG_BLOCK();
						}else{
							DBG_BLOCK();
							DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1013>");
							if(t_15==String(L"P1Char2",7)){
								DBG_BLOCK();
							}else{
								DBG_BLOCK();
								DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1014>");
								if(t_15==String(L"P1Char3",7)){
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1019>");
									bb_Test_Game->m_SelectedPlayerP1=String(L"Jennid",6);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1021>");
									m_xM=0;
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1022>");
									m_yM=0;
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1024>");
									m_MenuPoscition.At(0).At(0)=String(L"P2Char1",7);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1025>");
									m_MenuPoscition.At(1).At(0)=String(L"P2Char2",7);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1026>");
									m_MenuPoscition.At(2).At(0)=String(L"P2Char3",7);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1027>");
									m_MenuPoscition.At(3).At(0)=String(L"P2Char4",7);
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1028>");
									gc_assign(m_MenuImage,bb_Test_Game->m_ImageStrip3);
								}else{
									DBG_BLOCK();
									DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1029>");
									if(t_15==String(L"P1Char4",7)){
										DBG_BLOCK();
									}else{
										DBG_BLOCK();
										DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1030>");
										if(t_15==String(L"P2Char1",7)){
											DBG_BLOCK();
										}else{
											DBG_BLOCK();
											DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1031>");
											if(t_15==String(L"P2Char2",7)){
												DBG_BLOCK();
											}else{
												DBG_BLOCK();
												DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1033>");
												if(t_15==String(L"P2Char3",7)){
													DBG_BLOCK();
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1034>");
													bb_Test_Game->m_SelectedPlayerP2=String(L"Jennid",6);
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1036>");
													m_xM=0;
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1037>");
													m_yM=0;
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1038>");
													m_AnimationFrame=0;
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1040>");
													m_Height=1;
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1041>");
													m_Width=1;
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1042>");
													m_MenuPoscition.At(0).At(0)=String(L"FIGHT",5);
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1043>");
													gc_assign(m_MenuImage,bb_Test_Game->m_ImageStrip4);
												}else{
													DBG_BLOCK();
													DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1044>");
													if(t_15==String(L"P2Char4",7)){
														DBG_BLOCK();
													}else{
														DBG_BLOCK();
														DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1048>");
														if(t_15==String(L"FIGHT",5)){
															DBG_BLOCK();
															DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1050>");
															bb_Test_Game->m_ToState=String(L"Game",4);
															DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1051>");
															bb_Test_Game->m_GameState=String(L"Loading",7);
														}else{
															DBG_BLOCK();
															DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1053>");
															if(t_15==String(L"Map1",4)){
																DBG_BLOCK();
															}else{
																DBG_BLOCK();
																DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1055>");
																if(t_15==String(L"Map2",4)){
																	DBG_BLOCK();
																}else{
																	DBG_BLOCK();
																	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1057>");
																	if(t_15==String(L"Map3",4)){
																		DBG_BLOCK();
																	}else{
																		DBG_BLOCK();
																		DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1059>");
																		if(t_15==String(L"Continue",8)){
																			DBG_BLOCK();
																		}else{
																			DBG_BLOCK();
																			DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1061>");
																			if(t_15==String(L"Save",4)){
																				DBG_BLOCK();
																			}else{
																				DBG_BLOCK();
																				DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1063>");
																				if(t_15==String(L"ExitToMenu",10)){
																					DBG_BLOCK();
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return 0;
}
void c_MenuCreator::mark(){
	Object::mark();
	gc_mark_q(m_MenuImage);
	gc_mark_q(m_MenuPoscition);
	gc_mark_q(m_Delay);
}
String c_MenuCreator::debug(){
	String t="(MenuCreator)\n";
	t+=dbg_decl("Height",&m_Height);
	t+=dbg_decl("Width",&m_Width);
	t+=dbg_decl("MenuImage",&m_MenuImage);
	t+=dbg_decl("xM",&m_xM);
	t+=dbg_decl("yM",&m_yM);
	t+=dbg_decl("Delay",&m_Delay);
	t+=dbg_decl("AnimationFrame",&m_AnimationFrame);
	t+=dbg_decl("MenuPoscition",&m_MenuPoscition);
	return t;
}
int bb_app__updateRate;
void bb_app_SetUpdateRate(int t_hertz){
	DBG_ENTER("SetUpdateRate")
	DBG_LOCAL(t_hertz,"hertz")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<224>");
	bb_app__updateRate=t_hertz;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<225>");
	bb_app__game->SetUpdateRate(t_hertz);
}
c_Sound::c_Sound(){
	m_sample=0;
}
c_Sound* c_Sound::m_new(gxtkSample* t_sample){
	DBG_ENTER("Sound.new")
	c_Sound *self=this;
	DBG_LOCAL(self,"Self")
	DBG_LOCAL(t_sample,"sample")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<32>");
	gc_assign(this->m_sample,t_sample);
	return this;
}
c_Sound* c_Sound::m_new2(){
	DBG_ENTER("Sound.new")
	c_Sound *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<29>");
	return this;
}
void c_Sound::mark(){
	Object::mark();
	gc_mark_q(m_sample);
}
String c_Sound::debug(){
	String t="(Sound)\n";
	t+=dbg_decl("sample",&m_sample);
	return t;
}
c_Sound* bb_audio_LoadSound(String t_path){
	DBG_ENTER("LoadSound")
	DBG_LOCAL(t_path,"path")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<47>");
	gxtkSample* t_sample=bb_audio_device->LoadSample(bb_data_FixDataPath(t_path));
	DBG_LOCAL(t_sample,"sample")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<48>");
	if((t_sample)!=0){
		DBG_BLOCK();
		c_Sound* t_=(new c_Sound)->m_new(t_sample);
		return t_;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<49>");
	return 0;
}
c_Jennid::c_Jennid(){
}
c_Jennid* c_Jennid::m_new(){
	DBG_ENTER("Jennid.new")
	c_Jennid *self=this;
	DBG_LOCAL(self,"Self")
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1874>");
	c_BaseCharacters::m_new();
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1877>");
	gc_assign(m_SpriteSheet,bb_graphics_LoadImage(String(L"JFrameSheet.png",15),1,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1879>");
	gc_assign(m_StandSprite,m_SpriteSheet->p_GrabImage(260,0,130,122,4,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1880>");
	gc_assign(m_RunningSprite,m_SpriteSheet->p_GrabImage(0,122,130,122,8,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1881>");
	gc_assign(m_BAttackSprite,m_SpriteSheet->p_GrabImage(260,244,130,122,4,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1882>");
	gc_assign(m_TauntSprite,m_SpriteSheet->p_GrabImage(260,366,130,122,4,c_Image::m_DefaultFlags));
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1884>");
	gc_assign(m_Sprite,m_StandSprite);
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1886>");
	m_W=130;
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1887>");
	m_H=122;
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1889>");
	m_LeftFoot=45;
	DBG_INFO("D:/Files/School Work/SNHS/6Form/A-Level/Computing/Controll Assesment Project/Final Files/Rank Busters/Test.monkey<1890>");
	m_RightFoot=45;
	return this;
}
void c_Jennid::mark(){
	c_BaseCharacters::mark();
}
String c_Jennid::debug(){
	String t="(Jennid)\n";
	t=c_BaseCharacters::debug()+t;
	return t;
}
int bb_input_KeyHit(int t_key){
	DBG_ENTER("KeyHit")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/input.monkey<44>");
	int t_=bb_input_device->p_KeyHit(t_key);
	return t_;
}
int bb_audio_ChannelState(int t_channel){
	DBG_ENTER("ChannelState")
	DBG_LOCAL(t_channel,"channel")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<69>");
	int t_=bb_audio_device->ChannelState(t_channel);
	return t_;
}
int bb_audio_PlaySound(c_Sound* t_sound,int t_channel,int t_flags){
	DBG_ENTER("PlaySound")
	DBG_LOCAL(t_sound,"sound")
	DBG_LOCAL(t_channel,"channel")
	DBG_LOCAL(t_flags,"flags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<53>");
	if(((t_sound)!=0) && ((t_sound->m_sample)!=0)){
		DBG_BLOCK();
		bb_audio_device->PlaySample(t_sound->m_sample,t_channel,t_flags);
	}
	return 0;
}
int bb_app_Millisecs(){
	DBG_ENTER("Millisecs")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/app.monkey<233>");
	int t_=bb_app__game->Millisecs();
	return t_;
}
int bb_audio_MusicState(){
	DBG_ENTER("MusicState")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<101>");
	int t_=bb_audio_device->MusicState();
	return t_;
}
int bb_audio_PlayMusic(String t_path,int t_flags){
	DBG_ENTER("PlayMusic")
	DBG_LOCAL(t_path,"path")
	DBG_LOCAL(t_flags,"flags")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/audio.monkey<85>");
	int t_=bb_audio_device->PlayMusic(bb_data_FixDataPath(t_path),t_flags);
	return t_;
}
int bb_input_KeyDown(int t_key){
	DBG_ENTER("KeyDown")
	DBG_LOCAL(t_key,"key")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/input.monkey<40>");
	int t_=((bb_input_device->p_KeyDown(t_key))?1:0);
	return t_;
}
int bb_graphics_DebugRenderDevice(){
	DBG_ENTER("DebugRenderDevice")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<53>");
	if(!((bb_graphics_renderDevice)!=0)){
		DBG_BLOCK();
		bbError(String(L"Rendering operations can only be performed inside OnRender",58));
	}
	return 0;
}
int bb_graphics_Cls(Float t_r,Float t_g,Float t_b){
	DBG_ENTER("Cls")
	DBG_LOCAL(t_r,"r")
	DBG_LOCAL(t_g,"g")
	DBG_LOCAL(t_b,"b")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<378>");
	bb_graphics_DebugRenderDevice();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<380>");
	bb_graphics_renderDevice->Cls(t_r,t_g,t_b);
	return 0;
}
int bb_graphics_DrawImage(c_Image* t_image,Float t_x,Float t_y,int t_frame){
	DBG_ENTER("DrawImage")
	DBG_LOCAL(t_image,"image")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_frame,"frame")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<452>");
	bb_graphics_DebugRenderDevice();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<453>");
	if(t_frame<0 || t_frame>=t_image->m_frames.Length()){
		DBG_BLOCK();
		bbError(String(L"Invalid image frame",19));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<456>");
	c_Frame* t_f=t_image->m_frames.At(t_frame);
	DBG_LOCAL(t_f,"f")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<458>");
	bb_graphics_context->p_Validate();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<460>");
	if((t_image->m_flags&65536)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<461>");
		bb_graphics_renderDevice->DrawSurface(t_image->m_surface,t_x-t_image->m_tx,t_y-t_image->m_ty);
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<463>");
		bb_graphics_renderDevice->DrawSurface2(t_image->m_surface,t_x-t_image->m_tx,t_y-t_image->m_ty,t_f->m_x,t_f->m_y,t_image->m_width,t_image->m_height);
	}
	return 0;
}
int bb_graphics_PushMatrix(){
	DBG_ENTER("PushMatrix")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<333>");
	int t_sp=bb_graphics_context->m_matrixSp;
	DBG_LOCAL(t_sp,"sp")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<334>");
	if(t_sp==bb_graphics_context->m_matrixStack.Length()){
		DBG_BLOCK();
		gc_assign(bb_graphics_context->m_matrixStack,bb_graphics_context->m_matrixStack.Resize(t_sp*2));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<335>");
	bb_graphics_context->m_matrixStack.At(t_sp+0)=bb_graphics_context->m_ix;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<336>");
	bb_graphics_context->m_matrixStack.At(t_sp+1)=bb_graphics_context->m_iy;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<337>");
	bb_graphics_context->m_matrixStack.At(t_sp+2)=bb_graphics_context->m_jx;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<338>");
	bb_graphics_context->m_matrixStack.At(t_sp+3)=bb_graphics_context->m_jy;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<339>");
	bb_graphics_context->m_matrixStack.At(t_sp+4)=bb_graphics_context->m_tx;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<340>");
	bb_graphics_context->m_matrixStack.At(t_sp+5)=bb_graphics_context->m_ty;
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<341>");
	bb_graphics_context->m_matrixSp=t_sp+6;
	return 0;
}
int bb_graphics_Transform(Float t_ix,Float t_iy,Float t_jx,Float t_jy,Float t_tx,Float t_ty){
	DBG_ENTER("Transform")
	DBG_LOCAL(t_ix,"ix")
	DBG_LOCAL(t_iy,"iy")
	DBG_LOCAL(t_jx,"jx")
	DBG_LOCAL(t_jy,"jy")
	DBG_LOCAL(t_tx,"tx")
	DBG_LOCAL(t_ty,"ty")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<355>");
	Float t_ix2=t_ix*bb_graphics_context->m_ix+t_iy*bb_graphics_context->m_jx;
	DBG_LOCAL(t_ix2,"ix2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<356>");
	Float t_iy2=t_ix*bb_graphics_context->m_iy+t_iy*bb_graphics_context->m_jy;
	DBG_LOCAL(t_iy2,"iy2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<357>");
	Float t_jx2=t_jx*bb_graphics_context->m_ix+t_jy*bb_graphics_context->m_jx;
	DBG_LOCAL(t_jx2,"jx2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<358>");
	Float t_jy2=t_jx*bb_graphics_context->m_iy+t_jy*bb_graphics_context->m_jy;
	DBG_LOCAL(t_jy2,"jy2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<359>");
	Float t_tx2=t_tx*bb_graphics_context->m_ix+t_ty*bb_graphics_context->m_jx+bb_graphics_context->m_tx;
	DBG_LOCAL(t_tx2,"tx2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<360>");
	Float t_ty2=t_tx*bb_graphics_context->m_iy+t_ty*bb_graphics_context->m_jy+bb_graphics_context->m_ty;
	DBG_LOCAL(t_ty2,"ty2")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<361>");
	bb_graphics_SetMatrix(t_ix2,t_iy2,t_jx2,t_jy2,t_tx2,t_ty2);
	return 0;
}
int bb_graphics_Transform2(Array<Float > t_m){
	DBG_ENTER("Transform")
	DBG_LOCAL(t_m,"m")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<351>");
	bb_graphics_Transform(t_m.At(0),t_m.At(1),t_m.At(2),t_m.At(3),t_m.At(4),t_m.At(5));
	return 0;
}
int bb_graphics_Translate(Float t_x,Float t_y){
	DBG_ENTER("Translate")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<365>");
	bb_graphics_Transform(FLOAT(1.0),FLOAT(0.0),FLOAT(0.0),FLOAT(1.0),t_x,t_y);
	return 0;
}
int bb_graphics_Rotate(Float t_angle){
	DBG_ENTER("Rotate")
	DBG_LOCAL(t_angle,"angle")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<373>");
	bb_graphics_Transform((Float)cos((t_angle)*D2R),-(Float)sin((t_angle)*D2R),(Float)sin((t_angle)*D2R),(Float)cos((t_angle)*D2R),FLOAT(0.0),FLOAT(0.0));
	return 0;
}
int bb_graphics_Scale(Float t_x,Float t_y){
	DBG_ENTER("Scale")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<369>");
	bb_graphics_Transform(t_x,FLOAT(0.0),FLOAT(0.0),t_y,FLOAT(0.0),FLOAT(0.0));
	return 0;
}
int bb_graphics_PopMatrix(){
	DBG_ENTER("PopMatrix")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<345>");
	int t_sp=bb_graphics_context->m_matrixSp-6;
	DBG_LOCAL(t_sp,"sp")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<346>");
	bb_graphics_SetMatrix(bb_graphics_context->m_matrixStack.At(t_sp+0),bb_graphics_context->m_matrixStack.At(t_sp+1),bb_graphics_context->m_matrixStack.At(t_sp+2),bb_graphics_context->m_matrixStack.At(t_sp+3),bb_graphics_context->m_matrixStack.At(t_sp+4),bb_graphics_context->m_matrixStack.At(t_sp+5));
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<347>");
	bb_graphics_context->m_matrixSp=t_sp;
	return 0;
}
int bb_graphics_DrawImage2(c_Image* t_image,Float t_x,Float t_y,Float t_rotation,Float t_scaleX,Float t_scaleY,int t_frame){
	DBG_ENTER("DrawImage")
	DBG_LOCAL(t_image,"image")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_rotation,"rotation")
	DBG_LOCAL(t_scaleX,"scaleX")
	DBG_LOCAL(t_scaleY,"scaleY")
	DBG_LOCAL(t_frame,"frame")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<470>");
	bb_graphics_DebugRenderDevice();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<471>");
	if(t_frame<0 || t_frame>=t_image->m_frames.Length()){
		DBG_BLOCK();
		bbError(String(L"Invalid image frame",19));
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<474>");
	c_Frame* t_f=t_image->m_frames.At(t_frame);
	DBG_LOCAL(t_f,"f")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<476>");
	bb_graphics_PushMatrix();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<478>");
	bb_graphics_Translate(t_x,t_y);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<479>");
	bb_graphics_Rotate(t_rotation);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<480>");
	bb_graphics_Scale(t_scaleX,t_scaleY);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<482>");
	bb_graphics_Translate(-t_image->m_tx,-t_image->m_ty);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<484>");
	bb_graphics_context->p_Validate();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<486>");
	if((t_image->m_flags&65536)!=0){
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<487>");
		bb_graphics_renderDevice->DrawSurface(t_image->m_surface,FLOAT(0.0),FLOAT(0.0));
	}else{
		DBG_BLOCK();
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<489>");
		bb_graphics_renderDevice->DrawSurface2(t_image->m_surface,FLOAT(0.0),FLOAT(0.0),t_f->m_x,t_f->m_y,t_image->m_width,t_image->m_height);
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<492>");
	bb_graphics_PopMatrix();
	return 0;
}
int bb_graphics_DrawText(String t_text,Float t_x,Float t_y,Float t_xalign,Float t_yalign){
	DBG_ENTER("DrawText")
	DBG_LOCAL(t_text,"text")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_xalign,"xalign")
	DBG_LOCAL(t_yalign,"yalign")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<577>");
	bb_graphics_DebugRenderDevice();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<579>");
	if(!((bb_graphics_context->m_font)!=0)){
		DBG_BLOCK();
		return 0;
	}
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<581>");
	int t_w=bb_graphics_context->m_font->p_Width();
	DBG_LOCAL(t_w,"w")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<582>");
	int t_h=bb_graphics_context->m_font->p_Height();
	DBG_LOCAL(t_h,"h")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<584>");
	t_x-=(Float)floor(Float(t_w*t_text.Length())*t_xalign);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<585>");
	t_y-=(Float)floor(Float(t_h)*t_yalign);
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<587>");
	for(int t_i=0;t_i<t_text.Length();t_i=t_i+1){
		DBG_BLOCK();
		DBG_LOCAL(t_i,"i")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<588>");
		int t_ch=(int)t_text.At(t_i)-bb_graphics_context->m_firstChar;
		DBG_LOCAL(t_ch,"ch")
		DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<589>");
		if(t_ch>=0 && t_ch<bb_graphics_context->m_font->p_Frames()){
			DBG_BLOCK();
			DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<590>");
			bb_graphics_DrawImage(bb_graphics_context->m_font,t_x+Float(t_i*t_w),t_y,t_ch);
		}
	}
	return 0;
}
int bb_graphics_DrawRect(Float t_x,Float t_y,Float t_w,Float t_h){
	DBG_ENTER("DrawRect")
	DBG_LOCAL(t_x,"x")
	DBG_LOCAL(t_y,"y")
	DBG_LOCAL(t_w,"w")
	DBG_LOCAL(t_h,"h")
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<393>");
	bb_graphics_DebugRenderDevice();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<395>");
	bb_graphics_context->p_Validate();
	DBG_INFO("C:/MonkeyXFree84f/modules/mojo/graphics.monkey<396>");
	bb_graphics_renderDevice->DrawRect(t_x,t_y,t_w,t_h);
	return 0;
}
int bbInit(){
	GC_CTOR
	bb_app__app=0;
	DBG_GLOBAL("_app",&bb_app__app);
	bb_app__delegate=0;
	DBG_GLOBAL("_delegate",&bb_app__delegate);
	bb_app__game=BBGame::Game();
	DBG_GLOBAL("_game",&bb_app__game);
	bb_Test_Game=0;
	DBG_GLOBAL("Game",&bb_Test_Game);
	bb_graphics_device=0;
	DBG_GLOBAL("device",&bb_graphics_device);
	bb_graphics_context=(new c_GraphicsContext)->m_new();
	DBG_GLOBAL("context",&bb_graphics_context);
	c_Image::m_DefaultFlags=0;
	DBG_GLOBAL("DefaultFlags",&c_Image::m_DefaultFlags);
	bb_audio_device=0;
	DBG_GLOBAL("device",&bb_audio_device);
	bb_input_device=0;
	DBG_GLOBAL("device",&bb_input_device);
	bb_app__devWidth=0;
	DBG_GLOBAL("_devWidth",&bb_app__devWidth);
	bb_app__devHeight=0;
	DBG_GLOBAL("_devHeight",&bb_app__devHeight);
	bb_app__displayModes=Array<c_DisplayMode* >();
	DBG_GLOBAL("_displayModes",&bb_app__displayModes);
	bb_app__desktopMode=0;
	DBG_GLOBAL("_desktopMode",&bb_app__desktopMode);
	bb_graphics_renderDevice=0;
	DBG_GLOBAL("renderDevice",&bb_graphics_renderDevice);
	c_Stack2::m_NIL=0;
	DBG_GLOBAL("NIL",&c_Stack2::m_NIL);
	bb_app__updateRate=0;
	DBG_GLOBAL("_updateRate",&bb_app__updateRate);
	c_Game_app::m_MapGrid=Array<Array<String > >(33);
	DBG_GLOBAL("MapGrid",&c_Game_app::m_MapGrid);
	return 0;
}
void gc_mark(){
	gc_mark_q(bb_app__app);
	gc_mark_q(bb_app__delegate);
	gc_mark_q(bb_Test_Game);
	gc_mark_q(bb_graphics_device);
	gc_mark_q(bb_graphics_context);
	gc_mark_q(bb_audio_device);
	gc_mark_q(bb_input_device);
	gc_mark_q(bb_app__displayModes);
	gc_mark_q(bb_app__desktopMode);
	gc_mark_q(bb_graphics_renderDevice);
	gc_mark_q(c_Stack2::m_NIL);
	gc_mark_q(c_Game_app::m_MapGrid);
}
//${TRANSCODE_END}

int main( int argc,const char *argv[] ){

	BBMonkeyGame::Main( argc,argv );
}
