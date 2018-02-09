extends RigidBody2D

func _ready():
	set_process(true)

func _process(delta):
	if (Input.is_key_pressed(KEY_SPACE)):
		self.set_sleeping(false)
