extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var name = get_node("/root/global").getPlayerName()
	
	set_text(str("PlayerName: ", name))

