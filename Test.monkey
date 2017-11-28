Import mojo
Import brl 'StreamViewer and all that jazz ... FILE Manipulation


#GLFW_WINDOW_TITLE="GameBuster"
#GLFW_WINDOW_WIDTH=1280
#GLFW_WINDOW_HEIGHT=720
#GLFW_WINDOW_FULLSCREEN=False

Global Game:Game_app

Function Main()
	
	Game = New Game_app
	
End
	
Class Game_app Extends App
			
	
	Field ToState:String ' Used to load next state so that i can flush without a problem 'NEVER FLUSH
	Field Delay:Timer
	
	
	Field ImageSheet:Image ' The big image will all the goods
	
	Field ImageStrip1:Image 'Can be reused for other parts of the game
	Field ImageStrip2:Image	'This is where i extract the imagestrip from the imagesheet
	Field ImageStrip3:Image
	Field ImageStrip4:Image
	Field ImageStrip5:Image

	
	'''''''MENUUUUUSSSS''''''''''''''''''''''
	Field Menu:MenuCreator
	'''''''MENUUUUUSSSS''''''''''''''''''''''
	
	Field CharacterP1:Image ' INgame Avatar
	Field CharacterP2:Image
	
	Field GameState:String 'NEver FLUSH
	
	Field Welcome:Sound
	Field Nbidia:Sound
	
	''Game
	
	Field BackgroundImage:Image
	
	Field Collision:CollisionReader
	
	Field Map1:String
	Field Map2:String
	Field Map3:String
	
	Field P1:BaseCharacters
	Field P2:BaseCharacters
	
	Field DeveloperMode:Bool = False

	''Game
	
	''Loading
	
	Field LoadingB:Image ' Never Flush
	
	''
	'FRAMERATE
	Field FrameRate:Int
	Field Output:Int
	
	Field SelectedMap:String
	Field SelectedPlayerP1:String
	Field SelectedPlayerP2:String
	Field PlayerName:String 'MAYBE
	
	Global MapGrid:String[33][]
	
	'More Complex animations
	Field Counter:Int = 0
	Field Stage:Int = 1
	Field CurrentStrip:Image
	Field Toggle:Bool = True
	'
	
	Method OnCreate()
		
	
	
		FlushVariables("All") ' clears all variables ' essential to free up memory
		LoadingB = LoadImage("Loading.png")
		Delay = New Timer
		ToState = "Opening"
		GameState = "Loading" 'Xloads Files and Settings for a specific state
		
		'PlaySound(Nbidia, 0, 0)
	End
	
	Method OnUpdate()
		
	
		Select GameState
			
				
			Case "Loading"
				
		
				'	FlushVariables("All") 'CLears memory
					
					
				LoadFiles(ToState)
				GameState = ToState
		
				
			Case "Opening"
				
				If KeyHit(KEY_ENTER) Then
				
			
					ToState = "MainMenu"
					GameState = "Loading"
					
				End
			
				Select Stage
					Case 1
						CurrentStrip = ImageStrip1
					Case 2
						CurrentStrip = ImageStrip2
						
					Case 3
						If Counter = 2 And ChannelState(0) = 0 Then PlaySound(Welcome, 0)
					Case 4
						CurrentStrip = ImageStrip3
					Case 5
						CurrentStrip = ImageStrip4
					Case 6
						CurrentStrip = ImageStrip5
					Case 7
						
						ToState = "MainMenu"
						GameState = "Loading"
				End
			
				If Counter <> CurrentStrip.Frames() -1 And Toggle Then
			
					If Delay.DelayAnimation(140) Then Counter += 1
				
				Else
					
					Toggle = False
					Counter = 0
					Stage += 1
					Toggle = True
				End
			
				
			
				
			Case "MainMenu"
					
				''
				If MusicState() = 0 Then PlayMusic("BackM.wav", 1)
				
				Select Menu.yM
					Case 0
						Menu.MenuImage = ImageStrip1
					Case 1
						Menu.MenuImage = ImageStrip2
					Case 2
						Menu.MenuImage = ImageStrip3
					Case 3
						Menu.MenuImage = ImageStrip4
					Case 4
						Menu.MenuImage = ImageStrip5
						'Case 5
						'		Menu.MenuImage = ImageStrip3
						'	Case 6
						'		Menu.MenuImage = ImageStrip3
				End
				
				Menu.AnimationCycle()
				Menu.MenuButtons()
									
				If KeyHit(KEY_ENTER) Then
										
					Menu.Enter()
					'	FlushVariables("Menu")
										
				End
	

			Case "CharacterSelect"
				Menu.AnimationCycle()
				Menu.MenuButtons()
				
				If KeyHit(KEY_ENTER) Then
										
					Menu.Enter()
										
				End
					
					
				If KeyHit(KEY_ESCAPE) Then
					
					ToState = "MainMenu"
					GameState = "Loading"
				End
				
				
				
			Case "Settings"
			
				If KeyHit(KEY_ESCAPE) Then
					
					ToState = "MainMenu"
					GameState = "Loading"
				End
				
				
			Case "About"
			
				If KeyHit(KEY_ESCAPE) Then
					
					ToState = "MainMenu"
					GameState = "Loading"
				End
				
				If KeyHit(KEY_ENTER) Then
					If ImageStrip3 = ImageStrip1 Then
						ImageStrip3 = ImageStrip2
					Else
						ImageStrip3 = ImageStrip1
					End
				End
				
				
				P1.UpdateAction
				P2.UpdateAction
				
				P2.AnimationCycle
				P1.AnimationCycle
							
			Case "Game"
							
				If KeyHit(KEY_ESCAPE) Then
					ToState = "MainMenu"
					GameState = "Loading"
								

				End
							
				P1.PlayerCollisionCheck()
				P1.Gravity(5)
				
				If P1.Attacking = False Then P1.KeyBinds()
				
							
							
				P2.PlayerCollisionCheck()
				P2.Gravity(5)
				
				If P2.Attacking = False Then P2.KeyBinds()
			
			
							
				If KeyHit(KEY_F1) Then DeveloperMode = Not DeveloperMode
							
				P1.Jump()
				P2.Jump()
				
				P1.UpdateAction
				P2.UpdateAction
				
				P2.AnimationCycle
				P1.AnimationCycle
				
			
				
		
				P2.ToggleAttackCheckOff() ' Timer
				P1.ToggleAttackCheckOff() ' Timer
				
				P1.AttackCldwn
				P2.AttackCldwn
				
				'	P1.OnDmgTaken ' On hit call this
				
				
				Select True
					
					
					
					Case P1.Attacking
				 
						Select P1.AttackType
							Case "BAttack"
					
								If AttackAlgorithm(P1.BAttackGrid, P1.x, P1.y, P1.Direction, P2.x, P2.y, P2.W, P2.H) Then P2.OnDmgTaken()
					
							Case "SPAttack"
					
						End
				
				
					Case P2.Attacking
					
						Select P2.AttackType
							Case "BAttack"
					
								If AttackAlgorithm(P2.BAttackGrid, P2.x, P2.y, P2.Direction, P1.x, P1.y, P1.W, P1.H) Then P1.OnDmgTaken()
					
							Case "SPAttack"
					
						End
					
					
				
				End
				
				P1.Death()
				P2.Death()
				
				
		End
	End

	'
	Function AttackAlgorithm(Grid:String[][], Qx:Float, Qy:Float, QDirection:String, Ex:Float, Ey:Float, EW:Int, EH:Int) 'Attacker to Attacked
		
		'	Select True
		
		'Case P1.Attacking And P2.Attacking
		
	
		Local Tile:String
				
		Local x1:Int
		Local x2:Int
		Local y1:Int
		Local y2:Int
			
		Local z1:Int
		Local z2:Int
		Local c1:Int
		Local c2:Int
		
		'	If Grid2Grid = False Then
		For Local y:Int = 0 To 2
			For Local x:Int = 0 To 2
				Tile = Grid[x][y]
						
						
				If QDirection = "Right" and Tile = 2 Then
				
					y2 = Qy + ( (y + 1) * 65)
					y1 = (y * 65) + Qy
					x2 = ( (x + 1) * 61) + Qx
					x1 = (x * 61) + Qx
							
					z2 = (Ey + EW)
					z1 = Ey
					c2 = Ex + 30
					c1 = Ex + EH - 40
							
					'	z1 =
						
						
				
					If (y2 >= z1 And y2 <= z2) Or (y1 <= z2 And y1 >= z1) Then
									
						If (x2 > + c2 And x2 <= c1) Or (x1 <= c1 And x1 >= c2) Then
				
								
								
							Return True
								
				
						End
								
					End
				ElseIf QDirection = "Left" And Tile = 3 Then
							
							
					y2 = Qy + ( (y + 1) * 65)
					y1 = (y * 65) + Qy
					x2 = ( (x + 1) * 61) + Qx
					x1 = (x * 61) + Qx
							
					z2 = (Ey + EW)
					z1 = Ey
					c2 = Ex + 30
					c1 = Ex + EH - 40
							
					'	z1 =
						
						
				
					If (y2 >= z1 And y2 <= z2) Or (y1 <= z2 And y1 >= z1) Then
									
						If (x2 > + c2 And x2 <= c1) Or (x1 <= c1 And x1 >= c2) Then
				
								
								
							Return True
								
				
						End
							
						'	End
							
							
							
						'							If ( ( (y + 1) * 65) >= P2.y And ( (y + 1) * 65) <= (P2.y + P2.W)) Or (Y <= (P2.Y + P2.W) And Y >= P2.y) Then
						'
						'								If ( ( (x + 1) * 61) > + P2.x And ( (x + 1) * 61) <= (P2.y + W)) Or (x <= (P2.x + H) And x >= P2.x) Then
						'
						'
						'
						'								End
						'							End
							
					End			'					If (TileX1 <= pcX1 And pcX1 <= TileX2 And TileY1 <= pcY2 And TileY2 >= pcY2) Or (TileX1 <= pcX2 And pcX2 <= TileX2 And TileY1 <= pcY2 And TileY2 >= pcY2) Then
					'
					'
					'						B = True
					'
					'						y = TileY1 - H +2
					'						'Print "colliding as intended" ' FOr developing purposes
					'
					'
					'					End
					'
				
				
					'DrawImage AttackBlock, (x * BlockSize), (y * BlockSize)
				End
			Next
		Next
	
		'	Case P2.Attacking
		
		
		'	Else
	
	
	
	
		'		End
		'
	End
	
	
	Method OnRender()
		
		Select GameState
	
			Case "Opening"
				Cls(0, 0, 0)
				If Stage <> 3 Then
					Select CurrentStrip
						Case ImageStrip1
							DrawImage CurrentStrip, 296, 91, Counter
						Case ImageStrip2
							If Stage = 2 Then DrawImage CurrentStrip, 459, 251, Counter
						Case ImageStrip3
							DrawImage CurrentStrip, 0, 0, Counter
						Case ImageStrip4
							DrawImage CurrentStrip, 0, 0, Counter
						Case ImageStrip5
							DrawImage CurrentStrip, 0, 0, Counter
			
					End
				End
			Case "MainMenu"
				DrawImage BackgroundImage, 0, 0
			
			
				
				Select Menu.yM
					Case 0
					
						If Menu.MenuImage = ImageStrip1 Then DrawImage Menu.MenuImage, 559, 105, Menu.AnimationFrame
				
					Case 1
						If Menu.MenuImage = ImageStrip2 Then DrawImage Menu.MenuImage, 563, 171, Menu.AnimationFrame
					Case 2
						If Menu.MenuImage = ImageStrip3 Then DrawImage Menu.MenuImage, 568, 236, Menu.AnimationFrame
					Case 3
						If Menu.MenuImage = ImageStrip4 Then DrawImage Menu.MenuImage, 573, 301, Menu.AnimationFrame
					Case 4
						If Menu.MenuImage = ImageStrip5 Then DrawImage Menu.MenuImage, 578, 365, Menu.AnimationFrame
					
											
				End
			
			Case "Loading"
					
				DrawImage LoadingB, 0, 0
			
			Case "CharacterSelect"

			
				DrawImage BackgroundImage, 0, 0
				
				
				
				
				Select Menu.xM
					Case 0
						If Menu.MenuImage = ImageStrip4 Then
							DrawImage Menu.MenuImage, 260, 0, Menu.AnimationFrame Else
							DrawImage Menu.MenuImage, 267, 92, Menu.AnimationFrame
						End
						If Menu.MenuImage = ImageStrip2 Then DrawImage ImageStrip1, 0, 300, 3 ' On hover
						If Menu.MenuImage = ImageStrip3 Then DrawImage ImageStrip1, 945, 300, 2 ' On hover
					Case 1
						DrawImage Menu.MenuImage, 567, 142, Menu.AnimationFrame
					Case 2
						DrawImage Menu.MenuImage, 729, 195, Menu.AnimationFrame
						
						If Menu.MenuImage = ImageStrip2 Then DrawImage ImageStrip1, 0, 300, 1 ' On hover
						If Menu.MenuImage = ImageStrip3 Then DrawImage ImageStrip1, 945, 300, 0 ' On hover
						
					Case 3
						DrawImage Menu.MenuImage, 994, 125, Menu.AnimationFrame
					
				End
				If SelectedPlayerP1 = "Jennid" Then DrawImage ImageStrip1, 0, 300, 1
				If SelectedPlayerP2 = "Jennid" Then DrawImage ImageStrip1, 945, 300, 0
				
			Case "Settings"
				DrawImage BackgroundImage, 0, 0
				
			Case "About"
				
				DrawImage BackgroundImage, 0, 0
			
				DrawImage ImageStrip3, 333, 207
				DrawImage P1.Sprite, P1.x, P1.y, P1.FrameCounter
				DrawImage P2.Sprite, P2.x, P2.y, P2.FrameCounter
			
			Case "Game"
				
				DrawImage BackgroundImage, 0, 0
				
				
				
			
				DrawImage P1.Sprite, P1.x, P1.y, P1.FrameCounter
				DrawImage P2.Sprite, P2.x, P2.y, P2.FrameCounter
				
				
				' HUD IS CHARACTER SPECFIC YOU MORON
				
				DrawImage ImageStrip1, 255, 550, 0 'Block P1
				DrawImage ImageStrip1, 749, 550, 1 'Blocks P2
				DrawImage ImageStrip2, 413, 573, P1.Health 'Hearts
				DrawImage ImageStrip2, 907, 573, P2.Health
				DrawImage ImageStrip3, 396, 512 'Heart TExt
				DrawImage ImageStrip3, 890, 512
				'	DrawImage ImageStrip4, 451, 162	'Fight
				DrawImage CharacterP1, 240, 552
				DrawImage CharacterP2, 740, 552
				
				CalculateFrameRate()

				
				
				If DeveloperMode = True Then
				
					Collision.Draw(MapGrid, 32, 18, 40, 0, 0) 									'DEVELOPER MODE
					DrawRect P1.pcX1, P1.pcY2, 10, 10 'DEVELOPER MODE
					DrawRect P1.pcX2, P1.pcY2, 10, 10 'Developer MOde
					DrawRect P2.pcX1, P2.pcY2, 10, 10
					DrawRect P2.pcX2, P2.pcY2, 10, 10
					'	Collision.Draw(BAttackGrid, 2, 2, 65, P1.x, P1.y)
					'	DrawRect x1, y1, 10, 10
					'	DrawRect x2, y2, 10, 10
					
					DrawText(Millisecs(), 0, 0)
					'	CalculateFrameRate()
				
				End
		
		End
	End
	
	'OWN METHODS ';OWN METHODS OWN METHODS ';OWN METHODS OWN METHODS ';OWN METHODS OWN METHODS ';OWN METHODS OWN METHODS ';OWN METHODS
	
	Method LoadFiles:Void(Where:String)
		
		Select Where
		
		
		
			Case "Opening"
				SetUpdateRate 60
				
				ImageSheet = LoadImage("NAnimation.png")
			
				ImageStrip1 = ImageSheet.GrabImage(0, 0, 592, 538, 6)
					
				ImageStrip2 = ImageSheet.GrabImage(0, 538, 363, 219, 11)
					
				ImageSheet = LoadImage("RankAnimation.png")
				ImageStrip3 = ImageSheet.GrabImage(0, 0, 1280, 720, 2)
					
				ImageStrip4 = ImageSheet.GrabImage(0, 720, 1280, 720, 2)
				
					
				ImageStrip5 = ImageSheet.GrabImage(0, 1440, 1280, 720, 2)
				CurrentStrip = ImageSheet
				
				Welcome = LoadSound("Welcome.wav")
			Case "MainMenu"
				
			
				FlushVariables("All")
			
				SetUpdateRate 60
				
				'	MenusAnimationSheet = LoadImage("Opening.png")
		
				BackgroundImage = LoadImage("MainMenuBackground.png")
				ImageSheet = LoadImage("MainMenuSheet.png")
			
				ImageStrip1 = ImageSheet.GrabImage(0, 0, 260, 86, 2)
				ImageStrip2 = ImageSheet.GrabImage(0, 86, 260, 86, 2)
				ImageStrip3 = ImageSheet.GrabImage(0, 172, 260, 86, 2)
				ImageStrip4 = ImageSheet.GrabImage(0, 258, 260, 86, 2)
				ImageStrip5 = ImageSheet.GrabImage(0, 344, 260, 86, 2)
				
				Menu = New MenuCreator
				
				Menu.MenuImage = ImageStrip1

				Menu.Height = 5 ' Y
				Menu.Width = 1 ' X
				
				Menu.CreateArray()
				
				''''Populate Array
				
				
				Menu.MenuPoscition[0][0] = "NewGame"
				Menu.MenuPoscition[0][1] = "LoadGame"
				Menu.MenuPoscition[0][2] = "Settings"
				Menu.MenuPoscition[0][3] = "About"
				Menu.MenuPoscition[0][4] = "Exit"

				'''Populate Array
				
				
				
				'	CurrentFrame = 0
		 		 
				
				Nbidia = LoadSound("Nbidia.wav")
		 		
				GameState = "MainMenu"
				
				
			Case "CharacterSelect"
			
				FlushVariables("MainMenu")
				ImageSheet = LoadImage("CharacterSelectSheet.png")
				
				ImageStrip1 = ImageSheet.GrabImage(0, 0, 325, 419, 4) ' Characters
				ImageStrip2 = ImageSheet.GrabImage(755, 419, 58, 84, 2) ' P1
				ImageStrip3 = ImageSheet.GrabImage(755, 503, 58, 84, 2) 'P2
				ImageStrip4 = ImageSheet.GrabImage(0, 419, 725, 720) 'Fight
			
				BackgroundImage = LoadImage("CSBackground.png")
				
				
				'MEnu
				
				'Menu = New MenuCreator
				Menu.Height = 1 ' Y
				Menu.Width = 4 ' X
				
				Menu.CreateArray()
				
				''''Populate Array
				
				
				Menu.MenuPoscition[0][0] = "P1Char1"
				Menu.MenuPoscition[1][0] = "P1Char2"
				Menu.MenuPoscition[2][0] = "P1Char3"
				Menu.MenuPoscition[3][0] = "P1Char4"
				Menu.xM = 0
				Menu.yM = 0
				
				'''Populate Array
		 		
				Menu.MenuImage = ImageStrip2
				
			Case "Settings"
			
				BackgroundImage = LoadImage("Unavailable.png")
				
			Case "About"
			
				BackgroundImage = LoadImage("AboutBackground.png")
				ImageSheet = LoadImage("AboutSheet.png")
				
				
				ImageStrip2 = ImageSheet.GrabImage(0, 0, 569, 294)
				ImageStrip1 = ImageSheet.GrabImage(0, 294, 569, 382)
				ImageStrip3 = ImageStrip1
				
				P1 = New Jennid
				P2 = New Jennid
				P1.x = 320
				P2.x = 780
				P1.y = 90
				P2.y = 90
				P2.Direction = "Left"
				P1.Action = "Taunt"
				P2.Action = "Taunt"
				
			Case "Game"
				
				FlushVariables("MainMenu") ' DOesn't flush selected character or anything done inside Character Selection
				SetUpdateRate 60
				
				
					
				For Local i:Int = 0 To 32
					MapGrid[i] = New String[19]
				Next

				
				
				'	ImageSheet = Null
				BackgroundImage = LoadImage("Arena.png")
				
				'CollisionBox = LoadImage("CollisionBox.png")
				'CollisionBoxShow = LoadImage("CollisionBoxShow.png")
				
				Map1 = "monkey://data/Map1.txt"
				Map2 = "monkey://data/Map2.txt"
				Map3 = "monkey://data/Map3.txt"
				
				SelectedMap = Map1
				
				Collision = New CollisionReader
				Collision.Load(SelectedMap, MapGrid, 32, 18)
				'	Collision.Load("monkey://data/BAttack.txt", BAttackGrid, 2, 2)
			
			
				Select SelectedPlayerP1
					Case "Jennid"
						P1 = New Jennid
					Case "Nor"
					
					
				End
				Select SelectedPlayerP1
					Case "Jennid"
						P2 = New Jennid
					Case "Nor"
					
					
				End
				

				P1.LeftBind = KEY_A
				P1.RightBind = KEY_D
				P1.UpBind = KEY_W
				P1.DownBind = KEY_S
				P1.JumpBind = KEY_SPACE
				P1.BAttackBind = KEY_U
				P1.TauntBind = KEY_X
				
				
				P2.LeftBind = KEY_LEFT
				P2.RightBind = KEY_RIGHT
				P2.UpBind = KEY_UP
				P2.DownBind = KEY_DOWN
				P2.JumpBind = KEY_SHIFT
				P2.BAttackBind = KEY_P
				P2.TauntBind = KEY_C
				
				P1.x = 200
				P2.x = 900
				P2.Direction = "Left"
				
				ImageSheet = LoadImage("HudSheet.png")
				ImageStrip1 = ImageSheet.GrabImage(0, 0, 169, 169, 4) 'P Blocks
				ImageStrip2 = ImageSheet.GrabImage(0, 169, 169, 169, 4) 'Hearts
				ImageStrip3 = ImageSheet.GrabImage(0, 338, 169, 169) 'HealthText
				ImageStrip4 = ImageSheet.GrabImage(169, 338, 379, 202) 'Fight
				CharacterP1 = P1.SpriteSheet.GrabImage(0, 333, 139, 155)
				CharacterP2 = P2.SpriteSheet.GrabImage(0, 333, 139, 155)
				
				GameState = "Game"
			
				
				
		End
		
		
	End
	
	
	Method FlushVariables:Void(What:String)
		
		
		Select What
			
			
			Case "All"
			
				'	Welcome = Null
				'	Nbidia = Null
				
				BackgroundImage = Null
				Map1 = ""
				Map2 = ""
				Map3 = ""
				

					
				SelectedMap = ""
				SelectedPlayerP1 = ""
				SelectedPlayerP2 = ""
				PlayerName = ""
				 
				P1 = New BaseCharacters
				P2 = New BaseCharacters
	
				CharacterP1 = Null
				CharacterP2 = Null
				ImageStrip1 = Null
				ImageStrip2 = Null
				ImageStrip3 = Null
				ImageStrip4 = Null
				ImageStrip5 = Null
				
				
				
			Case "Time"
			
			
			Case "MainMenu"
			
				Menu.Height = 0
				Menu.MenuImage = Null
				Menu.Width = 0
				Menu.xM = 0
				Menu.yM = 0
				Menu.MenuPoscition = New String[0][]
				
				
			
			
		End
	
	End
	
	
	Method CalculateFrameRate()

		If Delay.DelayCommand(1000) = True
		
			Output = FrameRate
		
			FrameRate = 0
		
		Else

			FrameRate += 1
	
	
	
		End
		
		DrawText(Output, 0, 50)
	End


End


Class MenuCreator
	

	Field Height
	Field Width
	'Render
	Field MenuImage:Image ' GrabIMage
	
	'Render
	'Oter
	Field xM
	Field yM
	Field Delay:Timer
	
	Field AnimationFrame

	Field MenuPoscition:String[][] ' 0 = x     1 = y

	Method New()
	
		Delay = New Timer
	
	End
	
	Method CreateArray()

		
		MenuPoscition = New String[Width][]

		For Local i = 0 Until Width
			MenuPoscition[i] = New String[Height]
			
		Next

		
		
	End
	
	Method MenuButtons()
	
		If KeyHit(KEY_UP) Then
			
			If yM <= 0 Then
				yM = Height - 1
			Else
				yM -= 1
			End
		End

		If KeyHit(KEY_DOWN) Then
			
			If yM >= Height - 1 Then
				yM = 0
			Else
				yM += 1
			End


		End
		If KeyHit(KEY_RIGHT) Then
	
		
			If xM >= Width - 1 Then
				xM = 0
			Else
				xM += 1
			End

		End

		If KeyHit(KEY_LEFT) Then
	
			
			If xM <= 0 Then
				xM = Width - 1
			Else
				xM -= 1
			End
		End

	End
	
	Method AnimationCycle()
		
	
		If AnimationFrame = (MenuImage.Frames() -1) Then
	
			If Delay.DelayAnimation(400) Then AnimationFrame = 0
	
		Else
	
			If Delay.DelayAnimation(400) Then AnimationFrame += 1
	
		End
	
	
	
	End
	
	Method Enter()
		
	
		Select MenuPoscition[xM][yM]
		
		
			Case "NewGame"
				Game.ToState = "CharacterSelect"
				Game.GameState = "Loading"

			Case "LoadGame"
				Game.SelectedPlayerP1 = "Jennid"
				Game.SelectedPlayerP2 = "Jennid"
			
				Game.ToState = "Game"
				Game.GameState = "Loading"
			Case "Settings"
				Game.ToState = "Settings"
				Game.GameState = "Loading"
			Case "About"
				Game.ToState = "About"
				Game.GameState = "Loading"
			Case "Exit"
				EndApp()
				

			Case "P1Char1"
			Case "P1Char2"
			Case "P1Char3"
			
			
			
			
				Game.SelectedPlayerP1 = "Jennid"
			
				xM = 0
				yM = 0
			
				MenuPoscition[0][0] = "P2Char1"
				MenuPoscition[1][0] = "P2Char2"
				MenuPoscition[2][0] = "P2Char3"
				MenuPoscition[3][0] = "P2Char4"
				MenuImage = Game.ImageStrip3
			Case "P1Char4"
			Case "P2Char1"
			Case "P2Char2"
			
			Case "P2Char3"
				Game.SelectedPlayerP2 = "Jennid"
			
				xM = 0
				yM = 0
				AnimationFrame = 0
				
				Height = 1
				Width = 1
				MenuPoscition[0][0] = "FIGHT"
				MenuImage = Game.ImageStrip4
			Case "P2Char4"
			
				'Case "FightConfirmed"
				
			Case "FIGHT"
			
				Game.ToState = "Game"
				Game.GameState = "Loading"
			
			Case "Map1"
			
			Case "Map2"
			
			Case "Map3"
			
			Case "Continue"
			
			Case "Save"
			
			Case "ExitToMenu"
			
			
		End
	
	End

End


Class CollisionReader

	'	Const MapGridX:Int = 32
	'	Const MapGridY:Int = 18
	
	'Const BAttackGridX:Int = 2
	'Const BAttackGridY:Int = 2
	
	'	Const SAttackGridX:Int = 2
	'	Const SAttackGridY:Int = 2
	
	Field CollisionBlock:Image
	Field AttackBlock:Image
	Field BackgroundBlock:Image
	
	
	Method New()
		
		CollisionBlock = LoadImage("CollisionBlock.png")
		BackgroundBlock = LoadImage("BackgroundBlock.png")
		

		
	End
	

	
	Method Load(Path:String, Grid:String[][], FileW:Int, FileH:Int)
	
	
	
		Local File:FileStream
		Local Data:String
		Local DataItem:String[]
		
		File = FileStream.Open(Path, "r")
		Data = File.ReadString()
		File.Close
		
		DataItem = Data.Split("~n")
		
		For Local y:Int = 0 To(FileH - 1)
			For Local x:Int = 0 To(FileW - 1)
				Grid[x][y] = Int(DataItem[y][x .. x + 1])
			Next
		Next
		
		
	End
	
	
	Method Draw(Grid:String[][], FileW:Int, FileH:Int, BlockSize:Int, OffSetx:int, OffSety:Int) 'ONly used in Developer Mode
		
		Local Tile:String
		
		For Local y:Int = 0 To FileH
			For Local x:Int = 0 To FileW
				Tile = Grid[x][y]
				If Tile = 0 Then DrawImage BackgroundBlock, (x * BlockSize) + OffSetx, (y * BlockSize) + OffSety
				If Tile = 1 Then DrawImage CollisionBlock, (x * BlockSize) + OffSetx, (y * BlockSize) + OffSety
				If Tile = 2 Then DrawImage CollisionBlock, (x * BlockSize) + OffSetx, (y * BlockSize) + OffSety
				
			Next
		Next
	End
	
	
	
End



Class ImprovTimer
	
	Field Counter:Float
	Field i:Float
	Field Output:Bool


	Method Delay(Offset:String, FirstT:Bool)

		'	If i = 0 Then
		If TimeCommand < Millisecs() Then
			TimeCommand = Millisecs()
			TimeCommand += Offset
			i += 1
			
		End
		
		'	Else
		If TimeCommand < Millisecs() Then
			i = 0
			Return True
		End
		
		'	End


	End

	Method Start()
	
	End

	Method Stop()

	End


	Method Reset()
	

	End



End




Class Timer

	Field TimeCommand:Float
	Field TimeCommand2:Float
	Field TimeAnimation:Float
	Field i:Float = 0



	Method DelayCommand(Offset:Int) 'No Starting Commands AKA the first command will be called after....

	
		If i = 0 Then
			If TimeCommand < Millisecs() Then
				TimeCommand = Millisecs()
				TimeCommand += Offset
				i += 1
			
			End
		
		Else
			If TimeCommand < Millisecs() Then
				i = 0
				Return True
			End
		
		End

	End

	Method DelayCommand2(Offset:Int) 'No Starting Commands AKA the first command will be called after....

	
		If i = 0 Then
			If TimeCommand2 < Millisecs() Then
		
	
				TimeCommand2 = Millisecs()
				TimeCommand2 += Offset
				i += 1
			
			End
		
		Else
			If TimeCommand2 < Millisecs() Then
				i = 0
				Return True
			End
		
		End

	End
	
	Method DelayAnimation(Offset:int)

		If TimeAnimation < Millisecs() Then
		
			
			TimeAnimation = Millisecs() +Offset
			Return True
			'	TimeAnimation += Offset
			
			
		
		Else
			Return False
	
		End
	


	End
End



Class ImprovedTimer
	
	Field T
	Field Offset
	
	Field T2
	
	
	Method TimerInTimer()
		
	
	
	
	
	
	End
	
	
	Method RefreshTimer(RefreshRate:Int)
		
	
'	If Millisecs =
	
	
	
	End
	
	Method Check()
	
		If t <= 0 Then
	
			Return True

		EndIf


	End
	
	
	Method RepeatT()
	
		If t < 0 Then
	
			t = 5

	
		EndIf
	End



End



Class BaseCharacters
	

	'Images Sprites
	Field SpriteSheet:Image
	Field StandSprite:Image
	Field RunningSprite:Image
	Field BAttackSprite:Image
	Field SAttackSprite:Image
	Field TauntSprite:Image
	
	Field CharacterAvatar:Image
	Field Health:Int = 3 ' This can be changed to toatl health in the futer to have a variating ealth bar
	
	
	'Images Sprites
	
	'Attributes
	Field x:Float = 500  'Spawn Location
	Field y:Float = 280  'Spawn Location
	Field W  'Sprite Width
	Field H  'Sprite Height
	Field Speed:Int = 5  'Base Speed
	'Attributes

	'PlayerCollision Coordinates
		
	Field pcX1:Int
	Field pcY1:Int
	Field pcX2:Int 'Collision Box based on Foot poscition 'Idk what im doing
	Field pcY2:Int
	
	Field LeftFoot:Int
	Field RightFoot:Int
	
	'Used in the collision and Gravity detection
	Field Ground:Bool = False
	'Gravity check
	
	'PlayerCollision Coordinates


	'Jump Variables
	Field TotalJumps:Int = 2  'MIGHT NOT BE NEEDED BUT FOR FUTURE MUST IMPLEMENT
	Field JumpCounter:Int
	
	Const JumpHeight:Int = 40
	Field JumpLimit:Int
	Field Jumping:Bool = False
	Field JumpSpeed:Int = 10
	Field PreviousY:Int
	Field Touched:Bool
	
	Field GravityAcc = 10
	'Jump Variables

	
	'Player Binds          Can be easily changed in later for each character
	Field LeftBind
	Field RightBind
	Field UpBind
	Field DownBind
	Field JumpBind
	Field BAttackBind
	Field SAttackBind
	Field TauntBind
	'Player Binds           Can be easily changed in later for each character
	

	Field LockR:Bool ' Used for collision
	Field LockL:Bool
	
	''Animation
	
	Field FrameCounter:Int = 1
	Field Direction:String = "Right"
	Field Action:String = "Stand"
	Field Sprite:Image  'THE sprite selected
	
	
	Field AnimationDelay:Timer
	Field CommandDelay:Timer
	
	
	'''NIOT NEDED
	Field Attacking:Bool
	
	'Field GridReader:CollisionReader
	'
	
	Field BAttackGrid:String[3][]
	Field SAttackGrid:String[3][]
	
	Field AttackType:String
	
	Field AttackCooldown:Bool = False
	
	Method New()
		
		AnimationDelay = New Timer
		CommandDelay = New Timer
		
		
		For Local i:Int = 0 To 2
			BAttackGrid[i] = New String[3]
		Next
	
		
		For Local i:Int = 0 To 2
			SAttackGrid[i] = New String[3]
		Next
		
	
		Game.Collision.Load("monkey://data/BAttack.txt", BAttackGrid, 2, 2)
	End

	
	Method Death()
		
	
		If Health = 0 Then
		
			x = 700
	
			y = 100
			Health = 3
		EndIf
	
	
	End
	
	
	
	Method Gravity(GravityForce)
		
		
		If Ground = True Then
		
			JumpCounter = TotalJumps
			y = y
		
			GravityAcc = 0
		
		Else
			If JumpCounter = TotalJumps Then JumpCounter -= 1
			GravityAcc += 1
		
			y += GravityAcc
		
		
		End
	End

	
	Method PlayerCollisionCheck:Void()
		
		Local R:Bool 'Right
		Local L:Bool 'Left
		Local B:Bool 'Bottom
		
		Local TileX1
		Local TileX2
		Local TileY1
		Local TileY2
		
		
		pcX1 = x + LeftFoot
		
		pcY1 = y
		
		pcX2 = x + W - RightFoot
		
		pcY2 = (y + H)
		
		
		B = False 'False until proven wrong
		R = False
		L = False

		Local Tile:String

		For Local yTile:Int = 0 To 18
			For Local xTile:Int = 0 To 32
				Tile = Game.MapGrid[xTile][yTile]
					
				If Tile = 1 Then
						
						
					TileX1 = xTile * 40
					TileX2 = (xTile + 1) * 40
					TileY1 = yTile * 40
					TileY2 = (yTile + 1) * 40

									
									
					'	Select True
										
										
				
				
					If (TileX1 <= (pcX2 + 10) And (TileY1) <= (pcY2 - 10) And (pcX2 + 10) <= TileX2 And TileY2 > (pcY2 - 10)) Then
							
										
						R = True
						x = TileX1 + RightFoot - W - 10
						'x = TileX1 - w
						
					End
											
					If (TileX1 <= (pcX1 - 10) And TileY1 <= (pcY2 - 10) And (pcX1 - 10) <= TileX2 And TileY2 > (pcY2 - 10)) Then ' -3 due to symmetrical problems
											
						L = True
						x = TileX2 - LeftFoot + 10
						
					End
					
					If (TileX1 <= pcX1 And pcX1 <= TileX2 And TileY1 <= pcY2 And TileY2 >= pcY2) Or (TileX1 <= pcX2 And pcX2 <= TileX2 And TileY1 <= pcY2 And TileY2 >= pcY2) Then
											
											
						B = True
						
						y = TileY1 - H +2
						'Print "colliding as intended" ' FOr developing purposes
					
					
					End
				
				
																						
				
									
									
									
				End
			Next
		Next
	
		If B = True Then
			Ground = True
			
			
		Else
			Ground = False
		End
		
		If R = True Then
			LockR = True
			'Speed = 0
		Else
			LockR = False
		
		End
		
		If L = True Then
			LockL = True
		Else
			LockL = False
		End
		
	End
	
	
	Method Jump:Void()
		

		
		If Jumping = True Then
			 
			y -= JumpSpeed
			If JumpLimit < y = True And Touched = False Then
			
			
				
			 
				JumpSpeed += 3
				
			Else
			
				Touched = True
				
				JumpSpeed -= 1
			
				If Ground = True Then
					JumpSpeed = 0
					Action = "Stand"
					Jumping = False
				End
			End
			
		
			
			
		
		End

	End
	
	Method ToggleAttackCheckOff()
	
		If Attacking = True And CommandDelay.DelayCommand(250) Then
			Attacking = False
			Action = "Stand"
		End
		
	
		
	End
	
	Method UpdateAction()
		
	
		Select Action
		
		
			Case "Running"
				If Sprite <> RunningSprite Then
					If Direction = "Left" Then FrameCounter = 1 Else FrameCounter = (RunningSprite.Frames() / 2)
					Sprite = RunningSprite
				End
		
			Case "Stand"
				If Sprite <> StandSprite Then
					If Direction = "Left" Then FrameCounter = 1 Else FrameCounter = (StandSprite.Frames() / 2)
					Sprite = StandSprite
				End
		
			Case "BAttack"
				If Sprite <> BAttackSprite Then
					If Direction = "Left" Then FrameCounter = 1 Else FrameCounter = (BAttackSprite.Frames() / 2)
					Sprite = BAttackSprite
				End
				
			Case "Taunt"
				If Sprite <> TauntSprite Then
					If Direction = "Left" Then FrameCounter = 1 Else FrameCounter = (TauntSprite.Frames() / 2)
					Sprite = TauntSprite
				End
				
			Case "Jumping"
				If Sprite <> RunningSprite Then
					If Direction = "Left" Then FrameCounter = 1 Else FrameCounter = (RunningSprite.Frames() / 2)
					Sprite = RunningSprite
				End
		
		End
	
	
	End

	
	Method AnimationCycle()

		
	
		Select Direction
			
			Case "Right"
		 
		
				If FrameCounter = (Sprite.Frames() -1) Then
	
					If AnimationDelay.DelayCommand(100) Then FrameCounter = ( (Sprite.Frames()) / 2)
	
				Else
	
					If AnimationDelay.DelayCommand(100) = True Then FrameCounter += 1
	
				End

			Case "Left"
				If FrameCounter = 0 Then
	
					If AnimationDelay.DelayCommand(100) Then FrameCounter = ( (Sprite.Frames()) / 2) - 1
	
				Else
	
					If AnimationDelay.DelayCommand(100) Then FrameCounter -= 1
	
				End
			
			
			Case "Down"
		
			Case "UP"
			
			
	
		End
	End


	Method AttackCldwn()
		
		If AttackCooldown = True Then
			If CommandDelay.DelayCommand2(500) Then AttackCooldown = False
	
		End
	End
	
	Method OnDmgTaken()
			
		'Command Delay
		Select AttackType
	
	
			Case "BAttack"
	
	
				If Health > 0 And AttackCooldown = False Then Health -= 1
				AttackCooldown = True
				
			Case "SPAttack"
				
				If Health > 0 Then Health -= 2
	
			Case "Other"
	
	
	
	
		End
	
	
	End
	
	Method KeyBinds:Void()
		
		
	
		''Movement Acceleration
		If KeyDown(LeftBind) Or KeyDown(RightBind) Then
		
			
			If Speed >= 13 Then
			
				Speed = Speed
			
			Else
				If CommandDelay.DelayCommand2(100) Then Speed += 5
			End
			
		Else
			Speed = 2
						
		End ' SPeed will increase in resonse to movement sideways. Jumping, attacking and standing still will not increase
		
		
		If KeyDown(LeftBind) and Attacking = False Then
			
			Direction = "Left"
			If LockL = False Then
				x -= Speed
			End
		
			Action = "Running"
			
		End
		
		
		If KeyDown(RightBind) and Attacking = False Then
			
			Direction = "Right"
			If LockR = False Then
				x += Speed
			End
			
			Action = "Running"
			
		
		End
		
		If KeyHit(JumpBind) And Attacking = False Then
			
			
			If JumpCounter > 0 Then
					
				JumpSpeed = 10 + (GravityAcc * 1.5)
				PreviousY = y
				Touched = False
				JumpLimit = y - JumpHeight
					
				
				Jumping = True
				Action = "Jumping"
					
				JumpCounter -= 1
					
			End
		
			
		End
		
		If KeyHit(BAttackBind) Then
			
		
			If Attacking = False Then
				'CommandDelay.TimeCommand = 0						'Create a Animation Initializer  ' Attack not working after moving first time' Could be this?
				Action = "BAttack"
				AttackType = "BAttack"
				Attacking = True
				
			End
			
		
		End
		
		If KeyDown(TauntBind) Then
			
			If Attacking = False Then Action = "Taunt"
		
		End
		
		
		If KeyDown(RightBind) = False and KeyDown(LeftBind) = False And Ground = True And Attacking = False And Action = "Running" Then
		
			Action = "Stand"
		
		End

		If KeyDown(RightBind) = True and KeyDown(LeftBind) = True And Ground = True And Attacking = False And Action = "Running" Then
		
			Action = "Stand"
		
		End
		
	

		
	End


End



Class Nor Extends BaseCharacters





End



Class Jennid Extends BaseCharacters



	Method New()
	
	
		SpriteSheet = LoadImage("JFrameSheet.png")
		
		StandSprite = SpriteSheet.GrabImage(260, 0, 130, 122, 4)
		RunningSprite = SpriteSheet.GrabImage(0, 122, 130, 122, 8)
		BAttackSprite = SpriteSheet.GrabImage(260, 244, 130, 122, 4)
		TauntSprite = SpriteSheet.GrabImage(260, 366, 130, 122, 4)
		
		Sprite = StandSprite
		
		W = 130
		H = 122
		
		LeftFoot = 45 'Offset
		RightFoot = 45
		
	End

	
	
	
End


''Game designed and programmed by Kevin Navarro.