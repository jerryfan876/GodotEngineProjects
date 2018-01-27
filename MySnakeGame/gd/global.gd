extends Node

var currentScence  = null 

var playerName = ""

func _ready():
	currentScence = get_tree().get_root().get_child(get_tree().get_root().get_child_count() - 1)
	Globals.set("SNAKE_LENGTH", 0)

func getPlayerName():
	return playerName

func setPlayerName(pn):
	playerName = pn

#func setPlayerName():
#getSnakeLength
#func setSnakeLength():

func setScene(scene):#this passes an path to the scene that will be changed into 
	currentScence.queue_free()#deletes the current scene
	var s = ResourceLoader.load(scene)#load the scene as a variable 
	currentScence = s.instance()#create and instance of the scene
	get_tree().get_root().add_child(currentScence)#adding it to the root of our game tree
	



