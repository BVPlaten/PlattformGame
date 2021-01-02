extends KinematicBody2D

var defMove = Vector2()
const UP = Vector2(0,-1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		defMove.x = -100
		print("left")
	if Input.is_action_pressed("ui_right"):
		defMove.x = 100
		print("rigth")
	
	defMove = move_and_slide(defMove,UP)
	
