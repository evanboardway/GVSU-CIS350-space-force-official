extends KinematicBody2D

var destination = Vector2()
var velocity = Vector2()
var playerVelocity = Vector2()

func _ready():
	var destination = Vector2(5*cos(rotation_degrees), 5*sin(rotation_degrees))

func _physics_process(delta):
	velocity = position.direction_to(destination) * 500
	velocity = move_and_slide(playerVelocity*2)

func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == "EarthBody":
		GameStats.earthHealth -= GameStats.attack
		print(GameStats.earthHealth)
		print("hit " + body.get_name())
