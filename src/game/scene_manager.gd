extends Node

# THIS SCRIPT IS MEANT FOR MANAGING SCENES
# in order to keep scenes in memory we change scenes by adding and removing children to the Game node.

# init a dictionary of scene instances.

onready var earth
onready var playerStats
onready var systems

var previousScene
var gameStatus

func _ready():
	earth = load("res://game/earth/Earth.tscn").instance()
	playerStats = load("res://game/game-stats/PlayerStats.tscn").instance()
	systems = {
		"blue": load("res://game/system/System.tscn").instance(),
		"pastel": load("res://game/system/System.tscn").instance(),
		"orange": load("res://game/system/System.tscn").instance(),
		"yellow": load("res://game/system/System.tscn").instance(),
		"magenta": load("res://game/system/System.tscn").instance(),
		"earth": earth
	}
	
	for system in systems:
		systems[system].systemName = system

func change_scene(location):
	match location:
		"earth":
			previousScene = location
			set_scene(earth)
		"blue":
			previousScene = location
			set_scene(systems[location])
		"pastel":
			previousScene = location
			set_scene(systems[location])
		"orange":
			previousScene = location
			set_scene(systems[location])
		"yellow":
			previousScene = location
			set_scene(systems[location])
		"magenta":
			previousScene = location
			set_scene(systems[location])
		"trading_store":
			set_scene(load("res://game/system/trade/TradingStore.tscn").instance())


func set_scene(node_to_add):
	var root = get_node("/root/Game")
	for node in root.get_children():
		print(node)
		root.remove_child(node)
	root.add_child(playerStats)
	root.add_child(node_to_add)

# previous scene should only be a referene to the key in the systems dict
func previous_scene():
	set_scene(systems[previousScene])

func game_over(status):
		gameStatus = status
		get_tree().change_scene("res://game/game-stats/GameOver.tscn")
