extends Node2D

var fuelCost = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass





func _on_Area2D_body_entered(body):
	if body.get_class() == "KinematicBody2D":
		$EnterButton.visible = true
		$TradeStation.visible = false
		$Zone.visible = false


func _on_EnterButton_pressed():
	print("Enter Button")


func _on_Area2D_body_exited(body):
	if body.get_class() == "KinematicBody2D":
		$EnterButton.visible = false
		$TradeStation.visible = true
		$Zone.visible = true
