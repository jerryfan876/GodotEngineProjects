# Custom camera
extends Node

onready var screen_size = OS.get_window_size()
onready var player = get_node("Player")

func _ready():
	update_camera()

func update_camera():
	var canvas_transform = get_viewport().get_canvas_transform()
	canvas_transform[2] = -player.get_pos() + screen_size / 2
	get_viewport().set_canvas_transform(canvas_transform)
