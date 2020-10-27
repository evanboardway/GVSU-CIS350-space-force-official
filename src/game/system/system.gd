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
	var validCoords = false
	var rand = RandomNumberGenerator.new()
	var x
	var y
	
	while validCoords == false:
		rand.randomize()
		var coordX = rand.randf_range(-900, 2000)
		rand.randomize()
		var coordY = rand.randf_range(-500, 1300)
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
		if sqrt(pow((coordinate["x"] - newPoint["x"]), 2) + pow((coordinate["y"] - newPoint["y"]), 2)) < 500:
			return false
	return true
