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

var maps = [
	"res://game/system/planet-exploration/BlueMap.tscn",
	"res://game/system/planet-exploration/TealMap.tscn",
	"res://game/system/planet-exploration/PinkMap.tscn",
	"res://game/system/planet-exploration/PurpleMap.tscn",
	"res://game/system/planet-exploration/OrangeMap.tscn",
	"res://game/system/planet-exploration/RedMap.tscn"
	]

var iron: int = 0
var silver: int = 0
var gold: int = 0
var touched = false

var timer

func _ready():
	var rand = RandomNumberGenerator.new()
	
	#randomly select planet image
	rand.randomize()
	var index = rand.randf_range(0, 3)
	$Sprite.texture = textures[index]

# when the ship contacts a planet it selects a random map?
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player" and touched == false:
		touched = true
		
		timer = Timer.new()
		timer.wait_time = 300
		timer.connect("timeout",self,"reset_touched") 
		add_child(timer)
		timer.start()
		
		var rand = RandomNumberGenerator.new()
		
		#randomly select map
		rand.randomize()
		var index = rand.randf_range(0, 5)
		SceneManager.set_scene(load(maps[index]).instance())
	elif body.get_name() == "Player" and touched:
		GameStats.set_error_message("You must wait " + str(int(timer.time_left / 60 )) + " minutes before entering again")
		
func reset_touched():
	touched = false
