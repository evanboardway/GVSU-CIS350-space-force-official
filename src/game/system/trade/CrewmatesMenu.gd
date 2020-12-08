extends PopupMenu

# Declare member variables here. Examples:
var firstNames = ["Adam", "Alex", "Aaron", "Ben", "Carl", "Dan", "David", "Edward", "Fred", "Frank", "George", "Hal", "Hank", "Ike", "John", "Jack", "Joe", "Larry", "Monte", "Matthew", "Mark", "Nathan", "Otto", "Paul", "Peter", "Roger", "Roger", "Steve", "Thomas", "Tim", "Ty", "Victor", "Walter", "Max", "Evan", "Wyatt", "Abbey", "Ryan", "Erik"]
var lastNames = ["Fredericks", "Anderson", "Ashwoon", "Aikin", "Bateman", "Bongard", "Bowers", "Boyd", "Cannon", "Cast", "Deitz", "Dewalt", "Ebner", "Frick", "Hancock", "Haworth", "Hesch", "Hoffman", "Kassing", "Knutson", "Lawless", "Lawicki", "Mccord", "McCormack", "Miller", "Myers", "Nugent", "Ortiz", "Orwig", "Ory", "Paiser", "Pak", "Pettigrew", "Quinn", "Quizoz", "Ramachandran", "Resnick", "Sagar", "Schickowski", "Schiebel", "Sellon", "Severson", "Shaffer", "Solberg", "Soloman", "Sonderling", "Soukup", "Soulis", "Stahl", "Sweeney", "Tandy", "Trebil", "Trusela", "Trussel", "Turco", "Uddin", "Uflan", "Ulrich", "Upson", "Vader", "Vail", "Valente", "Van Zandt", "Vanderpoel", "Ventotla", "Vogal", "Wagle", "Wagner", "Wakefield", "Weinstein", "Weiss", "Woo", "Yang", "Yates", "Yocum", "Zeaser", "Zeller", "Ziegler", "Bauer", "Baxster", "Casal", "Cataldi", "Caswell", "Celedon", "Chambers", "Chapman", "Christensen", "Darnell", "Davidson", "Davis", "DeLorenzo", "Dinkins", "Doran", "Dugelman", "Dugan", "Duffman", "Eastman", "Ferro", "Ferry", "Fletcher", "Fietzer", "Hylan", "Hydinger", "Illingsworth", "Ingram", "Irwin", "Jagtap", "Jenson", "Johnson", "Johnsen", "Jones", "Jurgenson", "Kalleg", "Kaskel", "Keller", "Leisinger", "LePage", "Lewis", "Linde", "Lulloff", "Maki", "Martin", "McGinnis", "Mills", "Moody", "Moore", "Napier", "Nelson", "Norquist", "Nuttle", "Olson", "Ostrander", "Reamer", "Reardon", "Reyes", "Rice", "Ripka", "Roberts", "Rogers", "Root", "Sandstrom", "Sawyer", "Schlicht", "Schmitt", "Schwager", "Schutz", "Schuster", "Tapia", "Thompson", "Tiernan", "Tisler"]
var types = ["hull specialist", "weapons expert", "booster engineer"]
var bonuses = [.1, .1, .1, .1, .1, .1, .1, .1,.2, .2, .2, .2, .2, .2, .2, .2, .2, .2, .5, .5, .5, 1, 2]
var lst = []
# Called when the node enters the scene tree for the first time.
func _ready():
	#Currently errors on second instance in same system
	var curr = SceneManager.get_prev()
	var info = GameStats.available[curr]
	
	if not GameStats.available[curr]:
			createCrew()
	
	for crewmate in GameStats.available[curr]:
		lst.append(crewmate)
		
	$CrewContainer1/CrewInfo.text = lst[0].firstName + " " + lst[0].lastName + "\n" + lst[0].type + "\n cost: " + str(lst[0].cost)
	$CrewContainer2/CrewInfo.text = lst[1].firstName + " " + lst[1].lastName + "\n" + lst[1].type + "\n cost: " + str(lst[1].cost)
	$CrewContainer3/CrewInfo.text = lst[2].firstName + " " + lst[2].lastName + "\n" + lst[2].type + "\n cost: " + str(lst[2].cost)
	$CrewContainer4/CrewInfo.text = lst[3].firstName + " " + lst[3].lastName + "\n" + lst[3].type + "\n cost: " + str(lst[3].cost)
	$CrewContainer5/CrewInfo.text = lst[4].firstName + " " + lst[4].lastName + "\n" + lst[4].type + "\n cost: " + str(lst[4].cost)
	$CrewContainer6/CrewInfo.text = lst[5].firstName + " " + lst[5].lastName + "\n" + lst[5].type + "\n cost: " + str(lst[5].cost)
	$CrewContainer7/CrewInfo.text = lst[6].firstName + " " + lst[6].lastName + "\n" + lst[6].type + "\n cost: " + str(lst[6].cost)
	$CrewContainer8/CrewInfo.text = lst[7].firstName + " " + lst[7].lastName + "\n" + lst[7].type + "\n cost: " + str(lst[7].cost)
	$CrewContainer9/CrewInfo.text = lst[8].firstName + " " + lst[8].lastName + "\n" + lst[8].type + "\n cost: " + str(lst[8].cost)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

class crew:
	var firstName: String
	var lastName: String
	var type: String
	var bonus: float
	var cost: int
	var hired: bool

func createCrew():
	
	var curr = SceneManager.get_prev()
	
	randomize()
	
	for i in range(9):
		var temp = crew.new()
		temp.firstName = firstNames[rand_range(0, firstNames.size())]
		temp.lastName = lastNames[rand_range(0, lastNames.size())]
		temp.type = types[rand_range(0, types.size())]
		temp.bonus = bonuses[rand_range(0, bonuses.size())]
		temp.hired = false
		if(temp.bonus == .10):
			temp.cost = 500
		elif(temp.bonus == .20):
			temp.cost = 700
		elif(temp.bonus == .50):
			temp.cost = 900
		elif(temp.bonus == 1):
			temp.cost = 1000
		elif(temp.bonus == 2):
			temp.cost = 1500
		else:
			temp.cost = 400000
		GameStats.available[curr].append(temp)

func update_Crew():
	$CrewContainer1/CrewInfo.text = lst[0].firstName + " " + lst[0].lastName + "\n" + lst[0].type + "\n cost: " + str(lst[0].cost)
	$CrewContainer2/CrewInfo.text = lst[1].firstName + " " + lst[1].lastName + "\n" + lst[1].type + "\n cost: " + str(lst[1].cost)
	$CrewContainer3/CrewInfo.text = lst[2].firstName + " " + lst[2].lastName + "\n" + lst[2].type + "\n cost: " + str(lst[2].cost)
	$CrewContainer4/CrewInfo.text = lst[3].firstName + " " + lst[3].lastName + "\n" + lst[3].type + "\n cost: " + str(lst[3].cost)
	$CrewContainer5/CrewInfo.text = lst[4].firstName + " " + lst[4].lastName + "\n" + lst[4].type + "\n cost: " + str(lst[4].cost)
	$CrewContainer6/CrewInfo.text = lst[5].firstName + " " + lst[5].lastName + "\n" + lst[5].type + "\n cost: " + str(lst[5].cost)
	$CrewContainer7/CrewInfo.text = lst[6].firstName + " " + lst[6].lastName + "\n" + lst[6].type + "\n cost: " + str(lst[6].cost)
	$CrewContainer8/CrewInfo.text = lst[7].firstName + " " + lst[7].lastName + "\n" + lst[7].type + "\n cost: " + str(lst[7].cost)
	$CrewContainer9/CrewInfo.text = lst[8].firstName + " " + lst[8].lastName + "\n" + lst[8].type + "\n cost: " + str(lst[8].cost)

func _on_Hire_pressed():
	if (GameStats.coins < lst[0].cost || lst[0].hired):
		return
	else:
		match lst[0].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[0].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[0].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[0].bonus)
		
		GameStats.coins = GameStats.coins - lst[0].cost
		lst[0].firstName = ""
		lst[0].lastName = ""
		lst[0].type = "Hired"
		lst[0].hired = true
		update_Crew()

func _on_Hire2_pressed():
	if (GameStats.coins < lst[1].cost || lst[1].hired):
		return
	else:
		match lst[1].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[1].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[1].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[1].bonus)
		
		GameStats.coins = GameStats.coins - lst[1].cost
		lst[1].firstName = ""
		lst[1].lastName = ""
		lst[1].type = "Hired"
		lst[1].hired = true
		update_Crew()

func _on_Hire3_pressed():
	if (GameStats.coins < lst[2].cost || lst[2].hired):
		return
	else:
		match lst[2].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[2].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[2].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[2].bonus)
		
		GameStats.coins = GameStats.coins - lst[2].cost
		lst[2].firstName = ""
		lst[2].lastName = ""
		lst[2].type = "Hired"
		lst[2].hired = true
		update_Crew()

func _on_Hire4_pressed():
	if (GameStats.coins < lst[3].cost || lst[3].hired):
		return
	else:
		match lst[3].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[3].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[3].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[3].bonus)
		
		GameStats.coins = GameStats.coins - lst[3].cost
		lst[3].firstName = ""
		lst[3].lastName = ""
		lst[3].type = "Hired"
		lst[3].hired = true
		update_Crew()

func _on_Hire5_pressed():
	if (GameStats.coins < lst[4].cost || lst[4].hired):
		return
	else:
		match lst[4].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[4].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[4].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[4].bonus)
		
		GameStats.coins = GameStats.coins - lst[4].cost
		lst[4].firstName = ""
		lst[4].lastName = ""
		lst[4].type = "Hired"
		lst[4].hired = true
		update_Crew()

func _on_Hire6_pressed():
	if (GameStats.coins < lst[5].cost || lst[5].hired):
		return
	else:
		match lst[5].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[5].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[5].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[5].bonus)
		
		GameStats.coins = GameStats.coins - lst[5].cost
		lst[5].firstName = ""
		lst[5].lastName = ""
		lst[5].type = "Hired"
		lst[5].hired = true
		update_Crew()

func _on_Hire7_pressed():
	if (GameStats.coins < lst[6].cost || lst[6].hired):
		return
	else:
		match lst[6].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[6].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[6].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[6].bonus)
		
		GameStats.coins = GameStats.coins - lst[6].cost
		lst[6].firstName = ""
		lst[6].lastName = ""
		lst[6].type = "Hired"
		lst[6].hired = true
		update_Crew()

func _on_Hire8_pressed():
	if (GameStats.coins < lst[7].cost || lst[7].hired):
		return
	else:
		match lst[7].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[7].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[7].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[7].bonus)
		
		GameStats.coins = GameStats.coins - lst[7].cost
		lst[7].firstName = ""
		lst[7].lastName = ""
		lst[7].type = "Hired"
		lst[7].hired = true
		update_Crew()

func _on_Hire9_pressed():
	if (GameStats.coins < lst[8].cost || lst[8].hired):
		return
	else:
		match lst[8].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[8].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[8].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[8].bonus)
		
		GameStats.coins = GameStats.coins - lst[8].cost
		lst[8].firstName = ""
		lst[8].lastName = ""
		lst[8].type = "Hired"
		lst[8].hired = true
		update_Crew()
		
