extends CanvasLayer

#initializing the player stats
var attack: int
var health: int
var speed: int
var fuel: float
var damageTaken: int

var iron: int
var silver: int
var gold: int 
var coins: int

var earthHealth: int

var canTeleport = false

var weapon0
var weapon1
var weapon2
var weapon3

var health0
var health1
var health2
var health3

var speed0
var speed1
var speed2
var speed3

var position

var healthMultiplier
var damageMultiplier
var speedMultiplier

var available

var errorMessage = ""

var _earthHealthTimer

func _ready():
	position = {
		"x": 0,
		"y": 0
	}
	healthMultiplier = 1.00
	damageMultiplier = 1.00
	speedMultiplier = 1.00
	available = {"earth": [], "blue": [], "pastel": [], "orange": [], "yellow": [], "magenta": []}
	earthHealth = 10000
	attack = 10
	health = 100
	damageTaken = 0
	speed = 300
	fuel = 10000
	iron = 0
	silver = 0
	gold = 0
	coins = 100
	
	earthHealth = 10000
	
	weapon0 = true
	weapon1 = true
	weapon2 = true
	weapon3 = true
	
	health0 = true
	health1 = true
	health2 = true
	health3 = true
	
	speed0 = true
	speed1 = true
	speed2 = true
	speed3 = true
	
	position = {
	"x": 0,
	"y": 0
	}
	
	_earthHealthTimer = Timer.new()
	add_child(_earthHealthTimer)
	_earthHealthTimer.connect("timeout", self, "_on_earth_timer_timeout")
	_earthHealthTimer.set_wait_time(1.0)
	_earthHealthTimer.set_one_shot(false) # Make sure it loops
	_earthHealthTimer.start()

func _on_earth_timer_timeout():
	if earthHealth < 10000:
		earthHealth += 30
	if earthHealth > 10000:
		earthHealth = 10000

func set_error_message(message: String):
	errorMessage = message
	var timer = Timer.new()
	timer.connect("timeout",self,"_timeout") 
	timer.wait_time = 5
	add_child(timer)
	timer.start()

func _timeout():
	errorMessage = ""
	
func _health_percent():
	return float(health - damageTaken)/health

func _process(_delta):
	if earthHealth <= 0:
		SceneManager.game_over("win")
	if _health_percent() <= .5:
		set_error_message("Low health!!!")
	if health <= damageTaken:
		health = 10
		damageTaken = 0
		SceneManager.game_over("loss")
	if fuel <= 0:
		fuel = 10
		SceneManager.game_over("loss")
		


func _on_Mute_pressed():
	if BackgroundMusic.playing:
		BackgroundMusic.stop()
		BackgroundMusic.muted = true
	else:
		BackgroundMusic.play()
		BackgroundMusic.muted = false
