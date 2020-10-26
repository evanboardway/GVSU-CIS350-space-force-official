extends StaticBody2D

var textures = [
	load("res://game/assets/planets/generic.png"),
	load("res://game/assets/planets/magenta.png"),
	load("res://game/assets/planets/marble.png"),
	load("res://game/assets/planets/orange.png"),
	load("res://game/assets/planets/purple.png"),
	load("res://game/assets/planets/red.png"),
	load("res://game/assets/planets/tan.png")
	]

func _ready():
	var rand = RandomNumberGenerator.new()
	rand.randomize()
	var index = rand.randf_range(0, 6)
	$Sprite.texture = textures[index]

