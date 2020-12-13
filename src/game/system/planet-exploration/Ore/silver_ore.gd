extends Node2D

var silver

func _ready():
	var rand = RandomNumberGenerator.new()
	
	#randomly generate resources per ore
	rand.randomize()
	silver = rand.randf_range(2, 17)
	
func _on_Area2D_body_entered(body):
	if body.get_name() == "Character":
		GameStats.silver += silver
		queue_free()
