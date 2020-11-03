extends KinematicBody2D

var destination = Vector2()
var velocity = Vector2()
var playerVelocity = Vector2()

func _ready():
	var destination = Vector2(GameStats.position["x"],0)

func _physics_process(delta):
	velocity = position.direction_to(destination) * 500
	velocity = move_and_slide(playerVelocity*3)

func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	if !("PlayerLaser" in body.get_name()) and body.get_name() != "Player":
		get_node("AnimationPlayer").play("explosion")
		$LaserSprite.visible = false
		if body.get_name() == "EarthBody":
			GameStats.earthHealth -= GameStats.attack
