extends Control

var resourcesMenu
var fuelMenu
var upgradesMenu

func _ready():
	resourcesMenu = get_node("ResourcesMenu")
	fuelMenu = get_node("FuelMenu")
	upgradesMenu = get_node("UpgradesMenu")
	resourcesMenu.show()



func _on_Resources_pressed():
	if !$ResourcesMenu.visible:
		resourcesMenu.show()
		fuelMenu.hide()
		upgradesMenu.hide()


func _on_Fuel_pressed():
	if !$FuelMenu.visible:
		fuelMenu.show()
		resourcesMenu.hide()
		upgradesMenu.hide()


func _on_Upgrades_pressed():
	if !$UpgradesMenu.visible:
		upgradesMenu.show()
		resourcesMenu.hide()
		fuelMenu.hide()


func _on_Close_pressed():
	SceneManager.previous_scene()
