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
	"magenta": preload("res://game/system/System.tscn").instance()
}

var currentScene

func _ready():
	print("ready")

func change_scene(location):
	match location:
		"earth":
			set_scene(earth)
		"blue":
			set_scene(systems[location])
		"pastel":
			set_scene(systems[location])
		"orange":
			set_scene(systems[location])
		"yellow":
			set_scene(systems[location])
		"magenta":
			set_scene(systems[location])


func set_scene(node_to_add):
	var root = get_node("/root/Game")
	for node in root.get_children():
		root.remove_child(node)
	root.add_child(playerStats)
	root.add_child(node_to_add)
