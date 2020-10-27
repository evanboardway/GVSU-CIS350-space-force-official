extends KinematicBody2D

var anim_direction = "S"
var anim_mode = "Idle"
var animation
var speed = 200
var velocity = Vector2()

var moving = false

func get_input():
	velocity = Vector2()
	
	if Input.is_key_pressed(KEY_A): #a
		moving = true
		anim_direction = "W"
		velocity.x -= 1
	if Input.is_key_pressed(KEY_S): #s
		moving = true
		anim_direction = "S"
		velocity.y += 1
	if Input.is_key_pressed(KEY_W): #w
		moving = true
		anim_direction = "N"
		velocity.y -= 1
		#velocity = Vector2(speed,0)
	if Input.is_key_pressed(KEY_D): #d
		moving = true
		anim_direction = "E"
		velocity.x += 1
	velocity = velocity.normalized() * speed



func _play_animation():
	if moving:
		anim_mode = "Walk"
	else:
		anim_mode = "Idle"
	animation = anim_mode + "_" + anim_direction
	get_node("AnimationPlayer").play(animation)


func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
	_play_animation()
