extends KinematicBody2D


var speed = GameStats.speed
var velocity = Vector2()

var rotation_speed = 7.0
var rotation_dir = 0

func get_input():
	rotation_dir = 0
	# Detect up/down/left/right keystate and only move when pressed.
	velocity = Vector2()
	if Input.is_key_pressed(68):
		#elocity.x += 1
		rotation_dir += 1
	if Input.is_key_pressed(65):
		#elocity.x -= 1
		rotation_dir -= 1
	if Input.is_key_pressed(83):
		velocity.y += 1
		velocity = Vector2(-speed,0).rotated(rotation)
	if Input.is_key_pressed(87):
		velocity.y -= 1
		velocity = Vector2(speed,0).rotated(rotation)
		
	# THIS IS FOR DEV PURPOSES. UP AND DOWN KEYS CHANGE SPEED
	if Input.is_action_pressed("ui_up"):
		GameStats.speed += 10
		speed = GameStats.speed
	if Input.is_action_pressed("ui_down"):
		GameStats.speed -= 10
		speed = GameStats.speed
	velocity = velocity.normalized() * speed
 

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	move_and_collide(velocity * delta)
