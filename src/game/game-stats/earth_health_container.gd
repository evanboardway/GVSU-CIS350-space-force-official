extends HBoxContainer

var healthPercent: float

func _ready():
	$EarthHealth.text = "Earth Health: " + str(GameStats.earthHealth)

func _process(_delta):
	$EarthHealth.text = "Earth Health: " + str(GameStats.earthHealth)
