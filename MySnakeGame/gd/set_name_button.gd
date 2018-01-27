extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Button_pressed():
	var nameString = (str(get_parent().get_text()))
	get_node("/root/global").setPlayerName(nameString)
	get_parent().get_parent().get_node("Label").set_text(str("PlayerName: ", nameString))





