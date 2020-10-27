extends VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	$Warning.text = ""


func _process(delta):
	if GameStats.fuel / 100 <= 20:
		$Warning.text = "Low Fuel"
	else:
		$Warning.text = ""
