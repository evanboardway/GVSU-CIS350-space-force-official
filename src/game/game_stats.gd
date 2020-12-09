extends CanvasLayer

#initializing the player stats
var attack: int = 10
var health: int = 100
var speed: int = 300
var fuel: float = 10000

var iron: int = 0
var silver: int = 0
var gold: int = 0
var coins: int = 100

var earthHealth: int = 10000

var canTeleport = false

var weapon0 = true
var weapon1 = true
var weapon2 = true
var weapon3 = true

var health0 = true
var health1 = true
var health2 = true
var health3 = true

var speed0 = true
var speed1 = true
var speed2 = true
var speed3 = true

var healthMultiplier = 1.00
var damageMultiplier = 1.00
var speedMultiplier = 1.00

var available = {"earth": [], "blue": [], "pastel": [], "orange": [], "yellow": [], "magenta": []}

var position = {
	"x": 0,
	"y": 0
}

var errorMessage = ""

var _earthHealthTimer

func _ready():
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

func _process(delta):
	if earthHealth <= 0:
		SceneManager.game_over("win")
	if health < 50:
		set_error_message("Low health!!!")
	if health <= 0:
		SceneManager.game_over("loss")
		
