extends KinematicBody2D

var to
var destination 
var velocity = Vector2()
var moveDirection
var animStarted
var anim

func _ready():
	destination = Vector2(to)

func _physics_process(delta):
	if position.distance_to(to) < 10 and !animStarted:
		_play_animation()
	if animStarted:
		if anim.is_playing():
			pass
		else:
			queue_free()
		
	velocity = position.direction_to(destination) * 300
	moveDirection = rad2deg(destination.angle_to_point(position))
	rotation_degrees = moveDirection + 90
	velocity = move_and_slide(velocity*2)

func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() != "Player":
		_play_animation()
	if body.get_name() == "EarthBody":
		GameStats.earthHealth -= GameStats.attack

func _play_animation():
	animStarted = true
	anim = get_node("AnimationPlayer")
	anim.play("Explode")
