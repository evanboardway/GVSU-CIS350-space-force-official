extends Control

func _ready():
	match SceneManager.gameStatus:
		"win":
			$StatusText.text = "You done went and won BOI"
			$ColorRect.color = "093804"
		"loss":
			$StatusText.text = "You done went and lost BOI"
			$ColorRect.color = "620000"

func _on_ReturnButton_pressed():
	GameStats._ready()
	SceneManager._ready()
	get_tree().change_scene("res://title-screen/TitleScreen.tscn")
