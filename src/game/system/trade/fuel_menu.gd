extends PopupMenu


var fuelBar
var currentFuel: float
var costToRefil: int


# Called when the node enters the scene tree for the first time.
func _ready():
	_cost_to_refil()
	fuelBar = get_node("FuelBarContainer/FuelLevel")
	fuelBar.margin_right = currentFuel * 1135
	$FuelCost.text = "Cost to refuel: " + str(costToRefil) + " coins"


func _on_RefuelButton_pressed():
	fuelBar.margin_right = 1135
	GameStats.fuel = 10000
	GameStats.coins -= costToRefil
	_cost_to_refil()
	$FuelCost.text = "Cost to refuel: " + str(costToRefil) + " coins"

func _cost_to_refil():
	currentFuel = GameStats.fuel/10000
	costToRefil = (1-currentFuel)*250
