extends Node2D

var timer: Timer
var player
var systemName: String

# Called when the node enters the scene tree for the first time.
func _ready():
	$EarthBody/EarfAnimationPlayer.play("EarthRotate")
	timer = Timer.new()
	timer.wait_time = 20
	timer.connect("timeout",self,"respawn_enemies") 
	add_child(timer)
	timer.start()
	_add_enemies_to_system()


func _add_enemies_to_system():
	var enemy = load("res://game/player/Enemy.tscn")
	var usedPositions = []
	for _i in range(0, 10):
		var enemyInstance = enemy.instance()
		var coordinate = _get_random_coordinates(usedPositions)
		usedPositions.append(coordinate)
		enemyInstance.position.x = coordinate["x"]
		enemyInstance.position.y = coordinate["y"]
		enemyInstance.speed = 300
		add_child(enemyInstance)
		enemyInstance.add_to_group("earth_enemies")


# returns a map of unique coordinates given a list of existing coordinates.
func _get_random_coordinates(positions):
	var validCoords = false
	var rand = RandomNumberGenerator.new()
	var x
	var y
	
	while validCoords == false:
		rand.randomize()
		var coordX = rand.randf_range(-2000, 3100)
		rand.randomize()
		var coordY = rand.randf_range(-1200, 1900)
		if is_unique({"x": coordX, "y": coordY}, positions):
			x = coordX
			y = coordY
			validCoords = true
	return {
		"x": x,
		"y": y
	}
	
	
# AN EQUATION TO CHECK THAT THE DISTANCE BETWEEN COORD A AND B IS GREATER THAN 500
func is_unique(newPoint, positions):
	for coordinate in positions:
		if sqrt(pow((coordinate["x"] - newPoint["x"]), 2) + pow((coordinate["y"] - newPoint["y"]), 2)) < 1000:
			return false
		if sqrt(pow((0 - newPoint["x"]), 2) + pow((0 - newPoint["y"]), 2)) < 500:
			return false
	return true


func _on_SafeZone_body_entered(body):
	if body.get_name() == "Player":
		GameStats.canTeleport = true


func _on_SafeZone_body_exited(body):
	if body.get_name() == "Player":
		GameStats.canTeleport = false

func respawn_enemies():
	var enemy = load("res://game/player/Enemy.tscn")
	var numEnemies = get_tree().get_nodes_in_group("earth_enemies").size()
	if numEnemies < 10:
		var usedPositions = []
		for _i in range(0, 10 - numEnemies):
			var enemyInstance = enemy.instance()
			var coordinate = _get_random_coordinates(usedPositions)
			usedPositions.append(coordinate)
			enemyInstance.position.x = coordinate["x"]
			enemyInstance.position.y = coordinate["y"]
			enemyInstance.speed = 300
			add_child(enemyInstance)
			enemyInstance.add_to_group("earth_enemies")

