extends PopupMenu

onready var earthScene = preload("res://game/earth/Earth.tscn")
onready var blueSystem = preload("res://game/system/system.tscn")

func _on_Earth_pressed():
	get_tree().change_scene(earthScene)


func _on_Blue_pressed():
	pass # Replace with function body.


func _on_Pastel_pressed():
	pass # Replace with function body.


func _on_Orange_pressed():
	pass # Replace with function body.


func _on_Yellow_pressed():
	pass # Replace with function body.


func _on_Magenta_pressed():
	pass # Replace with function body.
