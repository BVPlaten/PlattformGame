extends KinematicBody2D

# siehe heartbeast YouTube 

const UP = Vector2(0,-1)
export var gravitation = 20
export var rechts = 200
export var links = -200
export var sprung = -600
onready var feet = get_node("CollisionFeet")


var bwgng = Vector2()				# Bewegungssvector
var animName = "idle"

func _physics_process(delta):
	bwgng.y += gravitation
	var anim = get_node("AnimatedSprite")
	
	if Input.is_action_pressed("ui_end"):
		get_tree().change_scene("res://szenen/start/StartMenue.tscn")
	elif Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			bwgng.y = sprung
			animName = "jump"
	elif Input.is_action_pressed("ui_right"):
		anim.flip_h = false
		bwgng.x = rechts
		animName = is_he_jumping("run")
	elif Input.is_action_pressed("ui_left"):
		anim.flip_h = true
		bwgng.x = links
		animName = is_he_jumping("run")
	else:
		bwgng.x = 0
		animName = is_he_jumping("idle")
	
	anim.play(animName)
	bwgng = move_and_slide(bwgng, UP)


func is_he_jumping(name):
	var animName = name
	if (!is_on_floor()):
		animName = name
		
	# wenn die Figur gerade springt sollen keine Kollisionen 
	# mit der umgebung abgefargt werden	
	if(bwgng.y < 0):
		feet.disabled = true
	else:
		feet.disabled = false
	
	return animName
		

		
