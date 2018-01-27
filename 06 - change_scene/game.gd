extends Panel


func _ready():
	var name = get_node("/root/globals").getPlayerName()
	get_node("Label").set_text(str(name , " is great"))
	
	var powerLevel = Globals.get("MAX_POWER_LEVEL")
	get_node("Label 2").set_text(str("Max power level is: ", powerLevel))
