extends Node

# THIS SCRIPT IS MEANT FOR MANAGING SCENES
# in order to keep scenes in memory we change scenes by adding and removing children to the Game node.

# init a dictionary of scene instances.

onready var earth = preload("res://game/earth/Earth.tscn").instance()
onready var system = preload("res://game/system/System.tscn").instance()
onready var playerStats = preload("res://game/game-stats/PlayerStats.tscn").instance()
onready var player = preload("res://game/player/Player.tscn").instance()

var currentScene

func _ready():
	print("ready")

func change_scene(location):
	match location:
		"earth":
			set_scene(earth)
		"blue":
			set_scene(system)


func set_scene(node_to_add):
	var root = get_node("/root/Game")
	for node in root.get_children():
		root.remove_child(node)
	root.add_child(playerStats)
	root.add_child(node_to_add)
	root.add_child(player)
