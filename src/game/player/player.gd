extends KinematicBody2D


var speed = GameStats.speed
var velocity = Vector2()

var rotation_speed = 7.0
var rotation_dir = 0

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	
	if Input.is_key_pressed(68):
		rotation_dir += .5
	if Input.is_key_pressed(65):
		rotation_dir -= .5
	if GameStats.fuel > 0:
		if Input.is_key_pressed(87):
			velocity.y -= 1
			velocity = Vector2(speed,0).rotated(rotation)
			GameStats.fuel = GameStats.fuel - 1
		#Code for backwards movement if needed later	
		#if Input.is_key_pressed(83):
		#	velocity.y += 1
		#	velocity = Vector2(-speed,0).rotated(rotation)
		#	GameStats.fuel = GameStats.fuel - 1
		
	# THIS IS FOR DEV PURPOSES. UP AND DOWN KEYS CHANGE SPEED
	if Input.is_action_pressed("ui_up"):
		GameStats.speed += 10
		speed = GameStats.speed
	if Input.is_action_pressed("ui_down"):
		GameStats.speed -= 10
		speed = GameStats.speed
	velocity = velocity.normalized() * speed
 

func _physics_process(delta):
	#GameStats.position = get_node("/root/Game/System/Player").get_position()
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	move_and_collide(velocity * delta)
