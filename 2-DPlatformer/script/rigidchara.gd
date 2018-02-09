extends RigidBody2D

export var player_speed = 200

var walk_left = Input.is_action_pressed("walk_left")
var walk_right = Input.is_action_pressed("walk_right")

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	walk_left = Input.is_action_pressed("walk_left")
	walk_right = Input.is_action_pressed("walk_right")
	
	if walk_left:
		set_linear_velocity(Vector2(-player_speed , get_linear_velocity().y))
	elif walk_right:
		set_linear_velocity(Vector2(player_speed , get_linear_velocity().y))
	else:
		set_linear_velocity(Vector2(0, get_linear_velocity().y))







