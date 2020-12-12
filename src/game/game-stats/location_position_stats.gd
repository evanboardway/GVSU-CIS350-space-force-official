extends Control

func _ready():
	$PlayerPosition.text = "(" + str(GameStats.position["x"]) + ", " + str(GameStats.position["y"]) + ")"
	$CurrentLocation.text = str(SceneManager.previousScene) + " SYSTEM"

func _process(_delta):
	$PlayerPosition.text = "(" + str(GameStats.position["x"]) + ", " + str(GameStats.position["y"]) + ")"
	$CurrentLocation.text = str(SceneManager.previousScene)  + " SYSTEM"
	$ErrorLabel/Label.text = str(GameStats.errorMessage)
