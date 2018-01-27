extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var body = get_parent().get_node("KinematicBody2Dtest")


func _on_Area2D_body_enter( body ):
	
	print("HAS ENTERED THE AREAAAAAAA")
