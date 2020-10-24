extends TextureButton


var navigationMenu
var active = false

# Called when the node enters the scene tree for the first time.
func _ready():
	navigationMenu = get_node("../NavMenu")
	print("NAV")


func _on_NavButton_pressed():
	if active:
		navigationMenu.hide()
		active = false
	else:
		navigationMenu.show()
		active = true

