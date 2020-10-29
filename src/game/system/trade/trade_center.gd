extends Node2D


var tradingStoreShown = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Portal_body_entered(body):
	if body.get_class() == "KinematicBody2D":
		SceneManager.previous_scene()


func _on_ResourcesStation_body_entered(body):
	if body.get_class() == "KinematicBody2D":
		SceneManager.set_scene("trading_store")


func _on_FuelStation_body_entered(body):
	if body.get_class() == "KinematicBody2D":
		print("fuel")
