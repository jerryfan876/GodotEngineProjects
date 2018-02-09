extends KinematicBody2D

export var gravity = 300
export var player_speed = 300
export var acceleration = 8

var current_speed = Vector2(0,0)

var walk_left = Input.is_action_pressed("walk_left")
var walk_right = Input.is_action_pressed("walk_right")

var raycast_down = null
var area = null

func _ready():
	set_fixed_process(true)
	area = get_parent().get_node("Area2D")
	
	
#	raycast_down = get_node("CollisionPolygon2D1/RayCastDown")
#	raycast_down.add_exception(self)
	


func _fixed_process(delta):
	walk_left = Input.is_action_pressed("walk_left")
	walk_right = Input.is_action_pressed("walk_right")
	
	
	if walk_left:
		myMove(-player_speed, acceleration, delta)
		#move(Vector2(-player_speed * delta, 0))
	elif walk_right:
		myMove(player_speed, acceleration, delta)
		#move(Vector2(player_speed * delta, 0))
	else:
		myMove(0, acceleration, delta)

func myMove(speed, acc, delta):
	current_speed.x = lerp(current_speed.x, speed, acc * delta)
	
	move(Vector2(0,1))
	if is_colliding():
		print("colliding**")
		var n = get_collision_normal()
		var y = n.dot(Vector2(0,1))
		var x = n.dot(Vector2(1,0))
		print (str("x = ", x))
		print (str("y = ", y))
		if (y == -1 ):
			move(Vector2(current_speed.x * delta, 0))
			current_speed.y = 0
	else:
		print("NOT colliding**")
		
		current_speed.y += gravity * delta 
		move(Vector2(current_speed.x * delta, current_speed.y * delta))

#func myMove(speed, acc, delta):
#	current_speed.x = lerp(current_speed.x, speed, acc * delta)
#	
#	if get_collision_normal().dot(Vector2(0,1)) < -0.9:
#		print (str(get_collision_normal()))
#		#print("on ground")
#		move(Vector2(current_speed.x * delta, 0))
#		current_speed.y = 0
#	else:
#		#print("not on ground")
#		print (str(get_collision_normal()))
#		current_speed.y += gravity * delta 
#		move(Vector2(current_speed.x * delta, current_speed.y * delta))


func isOnGround():
	var n = get_collision_normal()
	var y = n.dot(Vector2(0,1))
	if y == -1:
		return true
	else:
		return false








