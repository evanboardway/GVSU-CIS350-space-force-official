extends HBoxContainer


func _ready():
	$Iron.text = "Iron* " + str(GameStats.iron)
	$Silver.text = " Silver* " + str(GameStats.silver)
	$Gold.text = " Gold* " + str(GameStats.gold)
	$Coin.text = " Coins* " + str(GameStats.coins)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Iron.text = " Iron* " + str(GameStats.iron)
	$Silver.text = " Silver* " + str(GameStats.silver)
	$Gold.text = " Gold* " + str(GameStats.gold)
	$Coin.text = " Coins* " + str(GameStats.coins)
