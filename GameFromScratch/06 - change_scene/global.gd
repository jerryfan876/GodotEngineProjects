extends Node

var currentScene = null #reference to the current scene active 

var PlayerName = "Mike" #status, hp, enemies, global to the whole game

func getPlayerName():
	return PlayerName

func _ready(): #called when the script is done loading 
	currentScene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() - 1)
	print(str(currentScene))
	Globals.set("MAX_POWER_LEVEL", 9000)


#this allows us the change scene
func setScene(scene):
	currentScene.queue_free()
	var s = ResourceLoader.load(scene)
	currentScene = s.instance()
	get_tree().get_root().add_child(currentScene)












