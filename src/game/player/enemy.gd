extends KinematicBody2D

var destination
var speed: int = GameStats.enemySpeed
var moveDirection
var velocity = Vector2()
var rand = RandomNumberGenerator.new()

func _ready():
	_get_random_destination()

func _physics_process(delta):
	velocity = position.direction_to(destination) * speed
	moveDirection = rad2deg(destination.angle_to_point(position))
	rotation_degrees = moveDirection + 90
	velocity = move_and_slide(velocity)
	_check_destination_reached()

func _get_random_destination():
	rand.randomize()
	var coordX = rand.randf_range(-1500, 2800)
	rand.randomize()
	var coordY = rand.randf_range(-100, 1600)
	destination = Vector2(coordX, coordY)

func _check_destination_reached():
	if position.distance_to(destination) < 5:
		_get_random_destination()

func _on_Scope_body_entered(body):
	if body.get_name() == "Player":
		print("PLAYER")


func _on_DetectionArea_body_entered(body):
	if body.get_name() == "Player":
		destination = Vector2(GameStats.position)
	else:
		_get_random_destination()
