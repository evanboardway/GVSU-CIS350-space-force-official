extends PopupMenu

var costToRepair


# Called when the node enters the scene tree for the first time.
func _ready():
	_cost_to_repair()
	_update_cost()


func _cost_to_repair():
	costToRepair = GameStats.damageTaken * 5
	
func _update_cost():
	$RepairCost.text = "Cost to repair " + str(costToRepair) + " coins"
	$CurrentHealth.text = "Current health \n" + str((GameStats.health - GameStats.damageTaken)) + " out of " + str(GameStats.health)


func _on_RefuelButton_pressed():
	if GameStats.coins >= costToRepair:
		GameStats.coins = GameStats.coins - costToRepair
		GameStats.damageTaken = 0
		_cost_to_repair()
		_update_cost()
