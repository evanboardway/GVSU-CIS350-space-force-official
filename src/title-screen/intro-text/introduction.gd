extends Panel

func _input(_ev):
	if Input.is_key_pressed(KEY_ENTER):
		get_tree().change_scene("res://title-screen/intro-text/information.tscn")
