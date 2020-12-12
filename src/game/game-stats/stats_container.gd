extends VBoxContainer

var fuelLevel
var currentFuel: float

# Called when the node enters the scene tree for the first time.
func _ready():
	$Health.text = "Health* " + str(GameStats.health)
	$Attack.text = "Attack* " + str(GameStats.attack)
	$Speed.text = "Speed* " + str(GameStats.speed)
	fuelLevel = get_node("FuelContainer/FuelLevel")
	currentFuel = GameStats.fuel/10000
	fuelLevel.margin_right = currentFuel * 220

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Health.text = "Health* " + str(GameStats.health)
	$Attack.text = "Attack* " + str(GameStats.attack)
	$Speed.text = "Speed* " + str(GameStats.speed)
	currentFuel = GameStats.fuel/10000
	fuelLevel.margin_right = currentFuel * 220
	
