extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	text = "(" + str(GameStats.position["x"]) + ", " + str(GameStats.position["x"]) + ")"

func _process(delta):
	text = "(" + str(GameStats.position["x"]) + ", " + str(GameStats.position["x"]) + ")"
