extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	# get_tree().change_scene("res://szenen/PhysikTest/PhysikTest.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





	


func _on_Button_pressed(extra_arg_0):
	print(extra_arg_0)
	match extra_arg_0:
		"End":
			get_tree().quit()
		"JunpAndRun":
			get_tree().change_scene("res://szenen/alpha_centaurie/Alpha_Centauri.tscn")
		"Physics":
			get_tree().change_scene("res://szenen/PhysikTest/PhysikTest.tscn")
		"PlanetInvarder":
			get_tree().change_scene("res://szenen/PlanetInvader/PlanetInvader.tscn")



			
