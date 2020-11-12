extends PopupMenu


func _on_TradeIronButton_pressed():
	if GameStats.iron >= 30:
		GameStats.iron -= 30
		GameStats.coins += 5
		


func _on_TradeSilverButton_pressed():
	if GameStats.silver >= 15:
		GameStats.silver -= 15
		GameStats.coins += 30


func _on_TradeGoldButton_pressed():
	if GameStats.gold >= 5:
		GameStats.gold -= 5
		GameStats.coins += 100

