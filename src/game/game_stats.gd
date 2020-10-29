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


var canTeleport = false

var position = {
	"x": 0,
	"y": 0
}

var errorMessage = ""

func set_error_message(message: String):
	errorMessage = message
	var timer = Timer.new()
	timer.connect("timeout",self,"_timeout") 
	timer.wait_time = 5
	add_child(timer)
	timer.start()

func _timeout():
	errorMessage = ""
