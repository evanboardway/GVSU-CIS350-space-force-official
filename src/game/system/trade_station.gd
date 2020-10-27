extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body.get_class() == "KinematicBody2D":
		$EnterButton.visible = true
		$TradeStation.visible = false
		$Zone.visible = false


func _on_EnterButton_pressed():
	get_tree().change_scene("res://game/system/trade/TradeCenter.tscn")


func _on_Area2D_body_exited(body):
	if body.get_class() == "KinematicBody2D":
		$EnterButton.visible = false
		$TradeStation.visible = true
		$Zone.visible = true
