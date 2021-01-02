extends KinematicBody2D

var defMove = Vector2()
var horizontal_speed = 250
const UP = Vector2(0,-1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		defMove.x = -horizontal_speed
		print("left")
	if Input.is_action_pressed("ui_right"):
		defMove.x = horizontal_speed
		print("rigth")
	if Input.is_action_pressed("ui_up"):
		var d = get_node("Defender")
		d.visible = !(d.visible)
	if Input.is_action_pressed("ui_end"):
		get_tree().change_scene("res://szenen/start/StartMenue.tscn")
	
	defMove = move_and_slide(defMove,UP)
	
