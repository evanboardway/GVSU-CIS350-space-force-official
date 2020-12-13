extends Node2D

var iron

func _ready():
	var rand = RandomNumberGenerator.new()
	
	#randomly generate resources per ore
	rand.randomize()
	iron = rand.randf_range(3, 20)

func _on_Area2D_body_entered(body):
	if body.get_name() == "Character":
		GameStats.iron += iron
		queue_free()
