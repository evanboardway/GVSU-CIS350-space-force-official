extends Control

func _on_Area2D_body_entered(_body):
	get_tree().change_scene("res://title-screen/intro-text/introduction.tscn")
