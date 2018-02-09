extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Button_pressed():
	var player = get_tree().get_root().get_node("SamplePlayer")
	var  voiceID = player.play("coin", false)
	player.set_volume(voiceID, 0.1)
	

