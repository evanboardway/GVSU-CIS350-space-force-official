extends HBoxContainer

var healthPercent: float

func _ready():
	$EarthHealth.text = "Earth Health: " + str(GameStats.earthHealth)

func _process(delta):
	$EarthHealth.text = "Earth Health: " + str(GameStats.earthHealth)
