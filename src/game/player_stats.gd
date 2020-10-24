extends CanvasLayer

#initializing the player stats
var attack = 10
var health = 100
var speed = 10
var fuel = 100

var iron = 0
var silver = 0
var gold = 0


func _ready():
	pass
	

func increase_attack(number):
	attack += number
	
func decrease_attack(number):
	attack -= number
	
func increase_health(number):
	health += number
	
func decrease_health(number):
	health -= number

func increase_speed(number):
	speed += number

func decrease_speed(number):
	speed -= number
	
func increase_fuel(number):
	fuel += number

func decrease_fuel(number):
	fuel -= number
	
func increase_iron(number):
	iron += number
	
func decrease_iron(number):
	iron -= number
	
func increase_silver(number):
	silver += number
	
func decrease_silver(number):
	silver -= number

func increase_gold(number):
	gold += number

func decrease_gold(number):
	gold -= number
	



