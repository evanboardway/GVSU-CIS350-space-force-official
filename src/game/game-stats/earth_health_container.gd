extends HBoxContainer

var healthPercent: float

func _ready():
	$EarthHealth.text = "Earth Health: 100%"

func _process(_delta):
	var h = (GameStats.earthHealth / 10000)*100
	$EarthHealth.text = "Earth Health: " + str(h) + "%"
