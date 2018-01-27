extends StreamPlayer

var song1
var song2
var cur = song1

func _ready():
	set_process(true)
	song2 = load("guitar_static.ogg")
	song1 = self.get_stream()
	self.play()

func _process(delta):
	if (self.is_playing() != true):
		if (get_stream() == song1):
			self.set_stream(song2)
		else:
			self.set_stream(song1)
		self.play()


