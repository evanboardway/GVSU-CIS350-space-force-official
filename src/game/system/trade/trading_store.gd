extends Control

var resourcesMenu
var fuelMenu
var weaponsMenu

func _ready():
	resourcesMenu = get_node("ResourcesMenu")
	fuelMenu = get_node("FuelMenu")
	weaponsMenu = get_node("WeaponsMenu")
	resourcesMenu.show()



func _on_Resources_pressed():
	if !$ResourcesMenu.visible:
		resourcesMenu.show()
		fuelMenu.hide()
		weaponsMenu.hide()


func _on_Fuel_pressed():
	if !$FuelMenu.visible:
		fuelMenu.show()
		resourcesMenu.hide()
		weaponsMenu.hide()


func _on_Weapons_pressed():
	if !$WeaponsMenu.visible:
		weaponsMenu.show()
		resourcesMenu.hide()
		fuelMenu.hide()


func _on_Close_pressed():
	SceneManager.previous_scene()
