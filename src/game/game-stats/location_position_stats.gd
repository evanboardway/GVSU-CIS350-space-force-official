extends Control


func _ready():
	$PlayerPosition.text = "(" + str(GameStats.position["x"]) + ", " + str(GameStats.position["x"]) + ")"
	$CurrentLocation.text = str(SceneManager.previousScene) + " SYSTEM"

func _process(delta):
	$PlayerPosition.text = "(" + str(GameStats.position["x"]) + ", " + str(GameStats.position["x"]) + ")"
	$CurrentLocation.text = str(SceneManager.previousScene)  + " SYSTEM"
