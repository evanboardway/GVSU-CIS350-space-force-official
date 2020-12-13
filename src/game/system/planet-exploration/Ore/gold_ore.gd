extends Node2D

var gold

func _ready():
	var rand = RandomNumberGenerator.new()
	
	#randomly generate resources per ore
	rand.randomize()
	gold = rand.randf_range(1, 5)
	
func _on_Area2D_body_entered(body):
	if body.get_name() == "Character":
		GameStats.gold += gold
		queue_free()
