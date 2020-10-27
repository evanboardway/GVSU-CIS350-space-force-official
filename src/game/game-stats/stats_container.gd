extends VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	$Health.text = "Health* " + str(GameStats.health)
	$Attack.text = "Attack* " + str(GameStats.attack)
	$Speed.text = "Speed* " + str(GameStats.speed)
	$Fuel.text = "Fuel* " + str(GameStats.fuel / 100) + "%"
	$Position.text = "Position* " + str(GameStats.position["x"]) + ", " + str(GameStats.position["y"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Health.text = "Health* " + str(GameStats.health)
	$Attack.text = "Attack* " + str(GameStats.attack)
	$Speed.text = "Speed* " + str(GameStats.speed)
	$Fuel.text = "Fuel* " + str(GameStats.fuel / 100) + "%"
	$Position.text = "Position* " + str(GameStats.position["x"]) + ", " + str(GameStats.position["y"])
	
