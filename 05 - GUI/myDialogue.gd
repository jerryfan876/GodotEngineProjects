extends AcceptDialog

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.set_text("setting in the code")
	self.set_hide_on_ok(false)


func _on_AcceptDialog_confirmed():
	self.set_text("just clicked okay")
