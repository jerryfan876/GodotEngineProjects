 extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	#self.set_process(true)  #these in ready tells godot that u needa handle events, enables it
	self.set_process_input(true) #linked to _input
	#self.set_process_unhandled_input(true) #unhandled input are printed, linked to _unhandled_input


func _unhandled_input(event):
	print(str("Unhandled event: ", event))

func _input(event):
	if (event.type == InputEvent.MOUSE_BUTTON):
		if(event.button_index == BUTTON_RIGHT):
			self.set_pos(Vector2 (event.x, event.y))
			self.get_node("SamplePlayer").play("coin")
	if(event.type == InputEvent.KEY):
		var curPos = self.get_pos()
		
		if (event.scancode == KEY_RIGHT):
			curPos.x += 10
			self.set_pos(curPos)
			self.get_tree().set_input_as_handled() 
		if (event.scancode == KEY_LEFT):
			curPos.x -= 10
			self.set_pos(curPos)
			self.get_tree().set_input_as_handled() 
		if (event.scancode == KEY_UP):
			curPos.y -= 10
			self.set_pos(curPos)
		if (event.scancode == KEY_DOWN):
			curPos.y += 50
			self.set_pos(curPos)
	
	

#Pooling for input
func _process(delta): 
	if (Input.is_action_pressed("MOVE_RIGHT")):
		var curPos = self.get_pos()
		curPos.x += 100 * delta
		self.set_pos(curPos)
	
	if(Input.is_key_pressed(KEY_ESCAPE)):
		if (Input.is_key_pressed(KEY_SHIFT)):
			self.get_tree().quit()
	
	if (Input.is_mouse_button_pressed(BUTTON_LEFT)):
		print(str("Mouse button pressed at: ", Input.get_mouse_speed()))
		self.set_rot(get_rot() + deg2rad(90))
	
	
	"""
	#was used in a previous example, running manny
	var curPos = self.get_pos()
	curPos.x += 400 * delta
	
	if(curPos.x > self.get_viewport_rect().size.width + self.get_item_rect().size.width/ 2):
		curPos.x = 0 - self.get_item_rect().size.width / 2
	self.set_pos(curPos)
	"""
	
	
	




