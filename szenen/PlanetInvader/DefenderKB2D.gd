extends KinematicBody2D

# https://docs.godotengine.org/en/latest/tutorials/2d/2d_movement.html#rotation-movement

export (int) var speed = 200
export (float) var rotation_speed = 1.5

var velocity = Vector2()
var rotation_dir = 0
var myList = [[3,2],[50,70],[100,200]]
var idx = 0

func get_input():
	if Input.is_action_pressed('ui_up'):
		var tu = myList[idx]
		print(tu)
		velocity = Vector2(tu[0],tu[1])
		idx += 1
		if(idx>2):
			idx = 0

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
