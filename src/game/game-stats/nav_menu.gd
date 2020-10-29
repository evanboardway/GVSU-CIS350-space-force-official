extends PopupMenu

var error: String = "You must be within the zone of a trade station to teleport"

func _on_Earth_pressed():
	if GameStats.canTeleport:
		SceneManager.change_scene("earth")
	else:
		GameStats.set_error_message(error)


func _on_Blue_pressed():
	if GameStats.canTeleport:
		SceneManager.change_scene("blue")
	else:
		GameStats.set_error_message(error)


func _on_Pastel_pressed():
	if GameStats.canTeleport:
		SceneManager.change_scene("pastel")
	else:
		GameStats.set_error_message(error)


func _on_Orange_pressed():
	if GameStats.canTeleport:
		SceneManager.change_scene("orange")
	else:
		GameStats.set_error_message(error)


func _on_Yellow_pressed():
	if GameStats.canTeleport:
		SceneManager.change_scene("yellow")
	else:
		GameStats.set_error_message(error)


func _on_Magenta_pressed():
	if GameStats.canTeleport:
		SceneManager.change_scene("magenta")
	else:
		GameStats.set_error_message(error)
