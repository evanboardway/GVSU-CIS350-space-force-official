extends Control

var resourcesMenu
var fuelMenu
var upgradesMenu
var crewmatesMenu
var repairMenu

func _ready():
	resourcesMenu = get_node("ResourcesMenu")
	fuelMenu = get_node("FuelMenu")
	upgradesMenu = get_node("UpgradesMenu")
	crewmatesMenu = get_node("CrewmatesMenu")
	repairMenu = get_node("RepairMenu")
	resourcesMenu.show()



func _on_Resources_pressed():
	if !$ResourcesMenu.visible:
		resourcesMenu.show()
		fuelMenu.hide()
		upgradesMenu.hide()
		crewmatesMenu.hide()
		repairMenu.hide()


func _on_Fuel_pressed():
	if !$FuelMenu.visible:
		fuelMenu.show()
		resourcesMenu.hide()
		upgradesMenu.hide()
		crewmatesMenu.hide()
		repairMenu.hide()


func _on_Upgrades_pressed():
	if !$UpgradesMenu.visible:
		upgradesMenu.show()
		resourcesMenu.hide()
		fuelMenu.hide()
		crewmatesMenu.hide()
		repairMenu.hide()
		
func _on_Crew_pressed():
	if !$CrewmatesMenu.visible:
		crewmatesMenu.show()
		upgradesMenu.hide()
		resourcesMenu.hide()
		fuelMenu.hide()
		repairMenu.hide()
		
func _on_Repairs_pressed():
	if !$RepairMenu.visible:
		repairMenu.show()
		resourcesMenu.hide()
		fuelMenu.hide()
		crewmatesMenu.hide()
		upgradesMenu.hide()
		


func _on_Close_pressed():
	SceneManager.previous_scene()

