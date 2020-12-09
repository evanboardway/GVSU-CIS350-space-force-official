extends Control

var resourcesMenu
var fuelMenu
var upgradesMenu
var crewmatesMenu

func _ready():
	resourcesMenu = get_node("ResourcesMenu")
	fuelMenu = get_node("FuelMenu")
	upgradesMenu = get_node("UpgradesMenu")
	crewmatesMenu = get_node("CrewmatesMenu")
	resourcesMenu.show()



func _on_Resources_pressed():
	if !$ResourcesMenu.visible:
		resourcesMenu.show()
		fuelMenu.hide()
		upgradesMenu.hide()
		crewmatesMenu.hide()


func _on_Fuel_pressed():
	if !$FuelMenu.visible:
		fuelMenu.show()
		resourcesMenu.hide()
		upgradesMenu.hide()
		crewmatesMenu.hide()


func _on_Upgrades_pressed():
	if !$UpgradesMenu.visible:
		upgradesMenu.show()
		resourcesMenu.hide()
		fuelMenu.hide()
		crewmatesMenu.hide()
		
func _on_Crew_pressed():
	if !$CrewmatesMenu.visible:
		crewmatesMenu.show()
		upgradesMenu.hide()
		resourcesMenu.hide()
		fuelMenu.hide()

func _on_Close_pressed():
	SceneManager.previous_scene()

