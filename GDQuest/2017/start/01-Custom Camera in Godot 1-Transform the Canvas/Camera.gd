extends Node

onready var screen_size = Vector2(Globals.get("display/width") , Globals.get("display/height"))
onready var player = get_node("Player")
onready var last_player_pos = player.get_pos()


func _ready():
	var canvas_transform = get_viewport().get_canvas_transform()
	canvas_transform[2] = - last_player_pos + screen_size / 2
	get_viewport().set_canvas_transform(canvas_transform)


func update_camera():
	var player_offset = last_player_pos - player.get_pos() 
	last_player_pos = player.get_pos()
	
	var canvas_transform = get_viewport().get_canvas_transform()
	canvas_transform[2] += player_offset 
	get_viewport().set_canvas_transform(canvas_transform)
	return player_offset
