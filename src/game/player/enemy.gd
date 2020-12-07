extends KinematicBody2D

var destination
var speed: int
var moveDirection
var velocity = Vector2()
var rand = RandomNumberGenerator.new()
var detectedPlayer = false

func _ready():
	destination = _get_random_destination()

func _physics_process(delta):
	velocity = position.direction_to(destination) * speed
	moveDirection = rad2deg(destination.angle_to_point(position))
	rotation_degrees = moveDirection + 90
	velocity = move_and_slide(velocity)
	if !detectedPlayer:
		_check_destination_reached()
	else:
		destination = Vector2(GameStats.position)

func _check_destination_reached():
	if position.distance_to(destination) < 5:
		destination = _get_random_destination()


func _on_Scope_body_entered(body):
	if body.get_name() == "Player" && !GameStats.canTeleport:
		var system = get_node("/root/Game")
		var laser = load("res://game/player/Lasers.tscn").instance()
		laser.position = position
		laser.rotation_degrees = rotation_degrees
		system.add_child(laser)


func _on_DetectionArea_body_entered(body):
	if body.get_name() == "Player" && !GameStats.canTeleport:
		detectedPlayer = true
		destination = Vector2(GameStats.position)
	else:
		destination = _get_random_destination()


func _on_DetectionArea_body_exited(body):
	if body.get_name() == "Player":
		detectedPlayer = false
		destination = _get_random_destination()


func _get_random_destination():
	rand.randomize()
	var coordX = rand.randf_range(-1500, 2800)
	rand.randomize()
	var coordY = rand.randf_range(-100, 1600)
	return Vector2(coordX, coordY)
