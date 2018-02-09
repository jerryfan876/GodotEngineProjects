extends AnimatedSprite

var tempElapsed = 0

func _ready():
	set_process(true)
	

func _process(delta):
	tempElapsed += delta
	
	if (tempElapsed > 0.1):
		if (get_frame() == self.get_sprite_frames().get_frame_count("action") - 1):
			set_frame(0)
		else:
			self.set_frame(get_frame() + 1)
		
		set_pos(Vector2(get_pos().x + 3, get_pos().y))
		tempElapsed = 0
