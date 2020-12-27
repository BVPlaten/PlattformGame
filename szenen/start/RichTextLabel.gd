extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timer = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _init():
	add_child(timer)
	timer.wait_time = 2
	timer.connect("timeout",self,"_on_timer_timeout")
	

func _on_TextureButton_pressed():
	# get_node("..").cnt
	text = "Wurde gedrückt"	
	timer.start()


func _on_timer_timeout():
	text = ""
	
