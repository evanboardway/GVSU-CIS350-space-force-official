extends Node2D

# generates new planets at random unique positions on the map.
func _ready():
	var planet = load("res://game/system/Planet.tscn")
	var usedPositions = []
	for i in range(0, 10):
		var planetInstance = planet.instance()
		var coordinate = _get_random_coordinates(usedPositions)
		usedPositions.append(coordinate)
		planetInstance.position.x = coordinate["x"]
		planetInstance.position.y = coordinate["y"]
		add_child(planetInstance)
	print(usedPositions)

# returns a map of unique coordinates given a list of existing coordinates.
func _get_random_coordinates(positions):
	var needsX = true
	var needsY = true
	var rand = RandomNumberGenerator.new()
	var x
	var y
	
	while needsX == true:
		rand.randomize()
		var coord = rand.randf_range(-900, 2000)
		if is_unique(coord, positions, "x"):
			x = coord
			needsX = false

	while needsY == true:
		rand.randomize()
		var coord = rand.randf_range(-500, 1300)
		if is_unique(coord, positions, "y"):
			y = coord
			needsY = false

	return {
		"x": x,
		"y": y
	}

# SHOULD BE AN EQUATION TO CHECK DISTANCE BETWEEN COORD A AND B
func is_unique(newCoordinate, positions, type):
	match type:
		"x":
			for coordinate in positions:
				if (abs(newCoordinate-coordinate["x"])) < 500:
					return false
				return true
		"y":
			for coordinate in positions:
				if (abs(newCoordinate-coordinate["y"])) < 500:
					return false
				return true
	return true
