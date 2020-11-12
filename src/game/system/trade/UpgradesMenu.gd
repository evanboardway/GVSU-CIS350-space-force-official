extends PopupMenu

func _ready():
	update_upgrades()
	
func update_upgrades():
	if(GameStats.weapon0):
		$WeaponContainer/WeaponLabel.text = "Blaster Upgrade 1" 
		$WeaponContainer/WeaponUpgrade.text = "100 coins"
	elif(GameStats.weapon1):
		$WeaponContainer/WeaponLabel.text = "Blaster Upgrade 2" 
		$WeaponContainer/WeaponUpgrade.text = "500 coins"
	elif(GameStats.weapon2):
		$WeaponContainer/WeaponLabel.text = "Blaster Upgrade 3" 
		$WeaponContainer/WeaponUpgrade.text = "1000 coins"
	elif(GameStats.weapon3):
		$WeaponContainer/WeaponLabel.text = "Fully Upgraded" 
		$WeaponContainer/WeaponUpgrade.text = "-"
	
	if(GameStats.health0):
		$HealthContainer/HealthLabel.text = "Health Upgrade 1"
		$HealthContainer/HealthUpgrade.text = "100 coins"	
	elif(GameStats.health1):
		$HealthContainer/HealthLabel.text = "Health Upgrade 2"
		$HealthContainer/HealthUpgrade.text = "500 coins"
	elif(GameStats.health2):
		$HealthContainer/HealthLabel.text = "Health Upgrade 3"
		$HealthContainer/HealthUpgrade.text = "1000 coins"
	elif(GameStats.health3):
		$HealthContainer/HealthLabel.text = "Fully Upgraded"
		$HealthContainer/HealthUpgrade.text = "-"
	
	if(GameStats.speed0):
		$SpeedContainer/SpeedLabel.text = "Speed Upgrade 1"
		$SpeedContainer/SpeedUpgrade.text = "100 coins"
	elif(GameStats.speed1):
		$SpeedContainer/SpeedLabel.text = "Speed Upgrade 2"
		$SpeedContainer/SpeedUpgrade.text = "500 coins"
	elif(GameStats.speed2):
		$SpeedContainer/SpeedLabel.text = "Speed Upgrade 3"
		$SpeedContainer/SpeedUpgrade.text = "1000 coins"
	elif(GameStats.speed3):
		$SpeedContainer/SpeedLabel.text = "Fully Upgraded"
		$SpeedContainer/SpeedUpgrade.text = "-"
	
func _on_WeaponUpgrade_pressed():
	if (GameStats.weapon0):
		if (GameStats.coins >= 100):
			GameStats.coins -= 100
			GameStats.attack += 5
			GameStats.weapon0 = false
			update_upgrades()
			
	elif (GameStats.weapon1):
		if (GameStats.coins >= 500):
			GameStats.coins -= 500
			GameStats.attack += 10
			GameStats.weapon1 = false
			update_upgrades()
			
	elif (GameStats.weapon2):
		if (GameStats.coins >= 1000):
			GameStats.coins -= 1000
			GameStats.attack += 20
			GameStats.weapon2 = false
			update_upgrades()
			

func _on_HealthUpgrade_pressed():
	if (GameStats.health0):
		if (GameStats.coins >= 100):
			GameStats.coins -= 100
			GameStats.health += 50
			GameStats.health0 = false
			update_upgrades()
			
	elif (GameStats.health1):
		if (GameStats.coins >= 500):
			GameStats.coins -= 500
			GameStats.health += 100
			GameStats.health1 = false
			update_upgrades()
			
	elif (GameStats.health2):
		if (GameStats.coins >= 1000):
			GameStats.coins -= 1000
			GameStats.health += 300
			GameStats.health2 = false
			update_upgrades()

func _on_SpeedUpgrade_pressed():
	if (GameStats.speed0):
		if (GameStats.coins >= 100):
			GameStats.coins -= 100
			GameStats.speed += 50
			GameStats.speed0 = false
			update_upgrades()
			
	elif (GameStats.speed1):
		if (GameStats.coins >= 500):
			GameStats.coins -= 500
			GameStats.speed += 50
			GameStats.speed1 = false
			update_upgrades()
			
	elif (GameStats.speed2):
		if (GameStats.coins >= 1000):
			GameStats.coins -= 1000
			GameStats.speed += 100
			GameStats.speed2 = false
			update_upgrades()
			
