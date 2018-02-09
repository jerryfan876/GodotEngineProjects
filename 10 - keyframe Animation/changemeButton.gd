extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Button_pressed():
	var animation = get_parent().get_node("AnimationPlayer").get_animation("walkcycle")
	var trackvalue = animation.track_get_key_value(0, 1)
	animation.track_set_key_value(0,1, Vector2(trackvalue.x - 50,trackvalue.y))
