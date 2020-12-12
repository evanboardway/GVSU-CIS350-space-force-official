extends VBoxContainer

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Warning.text = ""


func _process(delta):
	var visible = timer(delta)
	if (visible):
		if GameStats.fuel / 100 == 0:
			$Warning.text = "Out Of Fuel"
		elif GameStats.fuel / 100 <= 20:
			$Warning.text = "Low Fuel"
		else: 
			$Warning.text = ""
	else:
		$Warning.text = ""
		
func timer(_InDelta):
	time += 1
	if(GameStats.fuel / 100 > 10):
		if(time < 40):
			return true
		elif(time < 80): 
			return false
		else:
			time = 0
			return false
	elif(GameStats.fuel / 100 > 5):
		if(time < 30):
			return true
		elif(time < 60): 
			return false
		else:
			time = 0
			return false
	elif(GameStats.fuel / 100 > 0):
		if(time < 15):
			return true
		elif(time < 30): 
			return false
		else:
			time = 0
			return false
	else:
		 return true
