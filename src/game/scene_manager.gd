extends Node

# THIS SCRIPT IS MEANT FOR MANAGING SCENES
# in order to keep scenes in memory we change scenes by adding and removing children to the Game node.

# init a dictionary of scene instances.

onready var earth = preload("res://game/earth/Earth.tscn").instance()
onready var playerStats = preload("res://game/game-stats/PlayerStats.tscn").instance()

onready var systems = {
	"blue": preload("res://game/system/System.tscn").instance(),
	"pastel": preload("res://game/system/System.tscn").instance(),
	"orange": preload("res://game/system/System.tscn").instance(),
	"yellow": preload("res://game/system/System.tscn").instance(),
	"magenta": preload("res://game/system/System.tscn").instance(),
	"earth": earth
}

var previousScene

func _ready():
	pass

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
		root.remove_child(node)
	root.add_child(playerStats)
	root.add_child(node_to_add)

# previous scene should only be a referene to the key in the systems dict
func previous_scene():
	set_scene(systems[previousScene])
