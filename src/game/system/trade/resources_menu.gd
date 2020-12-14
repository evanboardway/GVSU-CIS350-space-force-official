extends PopupMenu


func _on_TradeIronButton_pressed():
	if GameStats.iron >= 25:
		GameStats.iron -= 25
		GameStats.coins += 50
		


func _on_TradeSilverButton_pressed():
	if GameStats.silver >= 20:
		GameStats.silver -= 20
		GameStats.coins += 100


func _on_TradeGoldButton_pressed():
	if GameStats.gold >= 5:
		GameStats.gold -= 5
		GameStats.coins += 100

