extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Health.text = "Health: " + str(PlayerStats.health)
	$Attack.text = "Attack: " + str(PlayerStats.attack)
	$Speed.text = "Speed: " + str(PlayerStats.speed)
	$Fuel.text = "Fuel: " + str(PlayerStats.fuel) + "%"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Health.text = "Health: " + str(PlayerStats.health)
	$Attack.text = "Attack: " + str(PlayerStats.attack)
	$Speed.text = "Speed: " + str(PlayerStats.speed)
	$Fuel.text = "Fuel: " + str(PlayerStats.fuel) + "%"
