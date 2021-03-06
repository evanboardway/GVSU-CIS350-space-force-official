extends KinematicBody2D

var health: float = 500
var destination
var speed: int
var moveDirection
var velocity = Vector2()
var rand = RandomNumberGenerator.new()
var detectedPlayer = false
var timer: Timer

func _ready():
	destination = _get_random_destination()
	timer = Timer.new()
	timer.wait_time = 0.5
	timer.connect("timeout",self,"_shoot_that_boi") 
	add_child(timer)

func _physics_process(_delta):
	if health < 0:
		queue_free()
	$HealthBar/BackBar/FrontBar.margin_right = (health/500) * 100
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
		timer.start()

func _shoot_that_boi():
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


func _on_Scope_body_exited(body):
	if body.get_name() == "Player":
		timer.stop()

