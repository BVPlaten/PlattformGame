extends RichTextLabel

func _on_StartBtn_pressed():
	get_tree().change_scene("res://szenen/alpha_centaurie/Alpha_Centauri.tscn")

func _on_PhysikTestBtn_pressed():
	get_tree().change_scene("res://szenen/PhysikTest/PhysikTest.tscn")

func _on_EndBtn_pressed():
	pass 
