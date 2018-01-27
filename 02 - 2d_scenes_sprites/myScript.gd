extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var curPos = Vector2( self.get_parent().get_rect().size.width/2 , self.get_parent().get_rect().size.height/2 )
	self.set_pos(curPos)  
	
	self.set_rot(deg2rad(90))
	
	self.set_scale(Vector2(0.8,0.8))
	

func _draw():
	self.draw_rect(self.get_item_rect(), Color(0,0,1,0.2))
	


