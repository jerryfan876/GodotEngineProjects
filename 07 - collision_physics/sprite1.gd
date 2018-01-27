extends Sprite

var start_pos = Vector2()
var box1 = null
var box2 = null


func _ready():
	set_process(true)
	start_pos = get_pos()
	box1 = RectangleShape2D.new()
	box2 = RectangleShape2D.new()
	

func _process(delta):
	var sprite2 = get_parent().get_node("Sprite2")
	move_local_x(0.5)
	box1.set_extents(Vector2(get_texture().get_size().width/2 , get_texture().get_size().height / 2))
	box2.set_extents(Vector2(sprite2.get_texture().get_size().width/2 , sprite2.get_texture().get_size().height / 2))
	
	if (box1.collide(get_transform(),box2, sprite2.get_transform())):
		set_pos(start_pos)
