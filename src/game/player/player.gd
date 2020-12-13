extends KinematicBody2D

var speed
var velocity = Vector2()

var rotation_speed = 7.0
var rotation_dir = 0
var moveDirection

func _ready():
	speed = GameStats.speed

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	
	if Input.is_key_pressed(68):
		rotation_dir += .5
	if Input.is_key_pressed(65):
		rotation_dir -= .5
	if GameStats.fuel / 100 > 0:
		if Input.is_key_pressed(87):
			velocity.y -= 1
			velocity = Vector2(speed,0).rotated(rotation)
			if (get_tree().current_scene.name != "TitleScreen"):
				GameStats.fuel = GameStats.fuel - 1
		
	# THIS IS FOR DEV PURPOSES. UP AND DOWN KEYS CHANGE SPEED
	#if Input.is_action_pressed("ui_up"):
	#	GameStats.speed += 10
	#	speed = GameStats.speed
	#if Input.is_action_pressed("ui_down"):
	#	GameStats.speed -= 10
	#	speed = GameStats.speed
	#	
	velocity = velocity.normalized() * speed
 

func _physics_process(delta):
	GameStats.position = position
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	move_and_collide(velocity * delta)

func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_RIGHT and get_tree().current_scene.name != "TitleScreen":
		_shoot_laser(get_global_mouse_position())

func _shoot_laser(to):
	var system = get_node("/root/Game")
	var laser = load("res://game/player/weapons/PlayerLasers.tscn").instance()
	laser.to = to
	laser.position = position
	system.add_child(laser)
	get_node("Pew").play()
