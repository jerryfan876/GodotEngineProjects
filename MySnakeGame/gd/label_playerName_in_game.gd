extends Label

func _ready():
	var name = get_node("/root/global").getPlayerName()
	
	if (name != ""):
		set_text(str("PlayerName: ", name))
	else:
		set_text(str("PlayerName: Unknown"))


