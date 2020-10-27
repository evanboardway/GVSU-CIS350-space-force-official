extends KinematicBody2D


var speed = 500
var velocity = Vector2()

var rotation_speed = 5.0
var rotation_dir = 0

func get_input():
	rotation_dir = 0
	# Detect up/down/left/right keystate and only move when pressed.
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		#elocity.x += 1
		rotation_dir += 1
	if Input.is_action_pressed('ui_left'):
		#elocity.x -= 1
		rotation_dir -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
		velocity = Vector2(-speed,0).rotated(rotation)
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
		velocity = Vector2(speed,0).rotated(rotation)
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	move_and_collide(velocity * delta)
