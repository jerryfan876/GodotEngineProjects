extends RichTextLabel


var count = 0



# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.add_text("Hello World!")




func _on_Timer_timeout():
	count += 1
	self.clear()
	self.add_text(str("Hello World, elapsed time: ", count ))



