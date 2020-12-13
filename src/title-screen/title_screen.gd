extends Control

func _on_Area2D_body_entered(_body):
	get_tree().change_scene("res://title-screen/intro-text/introduction.tscn")

func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://title-screen/intro-text/introduction.tscn")
