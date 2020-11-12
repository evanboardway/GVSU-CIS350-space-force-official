extends Node2D

func _ready():
	match SceneManager.gameStatus:
		"win":
			$ColorRect/StatusText.text = "You done went and won BOI"
			$ColorRect.color = "093804"
		"loss":
			$ColorRect/StatusText.text = "You done went and lost BOI"
			$ColorRect.color = "620000"

func _on_ReturnButton_pressed():
	get_tree().change_scene("res://title-screen/TitleScreen.tscn")
