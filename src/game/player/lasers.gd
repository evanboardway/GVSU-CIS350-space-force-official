extends KinematicBody2D

var destination = Vector2()
var velocity = Vector2()

func _ready():
	destination = Vector2(GameStats.position)

func _physics_process(_delta):
	velocity = position.direction_to(destination) * 500
	velocity = move_and_slide(velocity)

func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player" && GameStats.position:
		GameStats.damageTaken += 10
		queue_free()
