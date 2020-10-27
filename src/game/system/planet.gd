extends StaticBody2D

#var textures = [
#	load("res://game/assets/planets/generic.png"),
#	load("res://game/assets/planets/magenta.png"),
#	load("res://game/assets/planets/marble.png"),
#	load("res://game/assets/planets/orange.png"),
#	load("res://game/assets/planets/purple.png"),
#	load("res://game/assets/planets/red.png"),
#	load("res://game/assets/planets/tan.png")
#	]

var textures = [
	load("res://game/assets/planets/v2/Baren.png"),
	load("res://game/assets/planets/v2/Ice.png"),
	load("res://game/assets/planets/v2/Lava.png"),
	load("res://game/assets/planets/v2/Terran.png")
]

var iron: int = 0
var silver: int = 0
var gold: int = 0
var touched = false

func _ready():
	var rand = RandomNumberGenerator.new()
	
	#randomly select planet image
	rand.randomize()
	var index = rand.randf_range(0, 3)
	$Sprite.texture = textures[index]
	
	#randomly generate resources per planet.
	rand.randomize()
	iron = rand.randf_range(15, 100)
	rand.randomize()
	silver = rand.randf_range(5, 50)
	rand.randomize()
	gold = rand.randf_range(1, 10)

# when the ship contacts a planet it takes the planets resources
# ABBEY THIS IS WHERE THE ANIMATION CODE COULD BE RENDERED
func _on_Area2D_body_entered(body):
	if body.get_class() == "KinematicBody2D" and touched == false:
		touched = true
		GameStats.iron += iron
		GameStats.silver += silver
		GameStats.gold += gold
		iron = 0
		silver = 0
		gold = 0
		
