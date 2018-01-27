extends Sprite

var start_pos = Vector2()
var box1 = null
var box2 = null

var currentFace = "SNAKE_RIGHT"
var newFace

func _ready():
	set_process(true)
	set_process_input(true)
	start_pos = self.get_pos()
	box1 = RectangleShape2D.new()
	box2 = RectangleShape2D.new()

var time = 0
var limit = 1
func _process(delta):
	var coin = get_node("/root/sceneRoot/coin")
	var curPos = get_pos()
	
	if (time >= limit):
		print ("one click")
		
		if (currentFace == "SNAKE_RIGHT"):
			var posX = curPos.x + 20
			set_pos(Vector2(posX,curPos.y))
		if (currentFace == "SNAKE_DOWN"):
			var posY = curPos.y + 20
			set_pos(Vector2(curPos.x,posY))
		if (currentFace == "SNAKE_LEFT"):
			var posX = curPos.x - 20
			set_pos(Vector2(posX,curPos.y))
		if (currentFace == "SNAKE_UP"):
			var posY = curPos.y - 20
			set_pos(Vector2(curPos.x,posY))
		
		#checking for coin collision 
		box1.set_extents(Vector2(get_texture().get_size().width /2, get_texture().get_size().height /2))
		box2.set_extents(Vector2(coin.get_texture().get_size().width /2 - 1, coin.get_texture().get_size().height /2 - 1))
		
		#when u collide with a coin
		if (box1.collide(self.get_transform(), box2, coin.get_transform())):
			set_pos(start_pos)
			var new_node = Sprite.new() 
			self.add_child(new_node)
			new_node.set_owner(self) 
			print(str(new_node.get_type()))
			print(str(new_node.get_parent().get_name()))
			
		
		#resetting the click timer
		time = 0
	time += 3 * delta

func _input(event):

	if (event.is_action("SNAKE_UP")):
		currentFace = "SNAKE_UP"
		print(currentFace)
	elif (event.is_action("SNAKE_DOWN")):
		currentFace = "SNAKE_DOWN"
		print(currentFace)
	elif (event.is_action("SNAKE_LEFT")):
		currentFace = "SNAKE_LEFT"
		print(currentFace)
	elif (event.is_action("SNAKE_RIGHT")):
		currentFace = "SNAKE_RIGHT"
		print(currentFace)

