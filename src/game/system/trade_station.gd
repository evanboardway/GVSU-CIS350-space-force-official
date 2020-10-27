extends Node2D

var fuelCost = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass





func _on_Area2D_body_entered(body):
	if body.get_class() == "KinematicBody2D":
		print("ZONE")
