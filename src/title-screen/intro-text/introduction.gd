extends Panel

func _input(ev):
	if Input.is_key_pressed(KEY_ENTER):
		get_tree().change_scene("res://game/Game.tscn")
