extends Node

onready var earth = preload("res://game/earth/Earth.tscn")
onready var system = preload("res://game/system/System.tscn")
onready var player = preload("res://game/player/Player.tscn")

func _ready():
	var scene = system.instance()
	add_child(scene)
	scene.add_child(player.instance())
