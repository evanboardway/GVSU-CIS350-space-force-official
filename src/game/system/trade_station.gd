extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		$EnterButton.visible = true
		$TradeStation.visible = false
		$Zone.visible = false
		GameStats.canTeleport = true


func _on_EnterButton_pressed():
	SceneManager.change_scene("trading_store")


func _on_Area2D_body_exited(body):
	if body.get_name() == "Player":
		$EnterButton.visible = false
		$TradeStation.visible = true
		$Zone.visible = true
		GameStats.canTeleport = false
