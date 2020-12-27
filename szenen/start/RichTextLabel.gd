extends RichTextLabel


# https://github.com/BVPlaten/PlattformGame
var timer = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _init():
	add_child(timer)
	timer.wait_time = 1
	timer.connect("timeout",self,"_on_timer_timeout")
	

func _on_StartBtn_pressed():
	text = "Starte das Spiel"
	timer.start()

func _on_EndBtn_pressed():
	pass 
	

func _on_timer_timeout():
	text = ""
	get_tree().change_scene("res://szenen/alpha_centaurie/Alpha_Centauri.tscn")

	
