extends PopupMenu

# Declare member variables here. Examples:
var firstNames = ["Adam", "Alex", "Aaron", "Ben", "Carl", "Dan", "David", "Edward", "Fred", "Frank", "George", "Hal", "Hank", "Ike", "John", "Jack", "Joe", "Larry", "Monte", "Matthew", "Mark", "Nathan", "Otto", "Paul", "Peter", "Roger", "Roger", "Steve", "Thomas", "Tim", "Ty", "Victor", "Walter", "Max", "Evan", "Wyatt", "Abbey", "Ryan", "Erik"]
var lastNames = ["Fredericks", "Anderson", "Ashwoon", "Aikin", "Bateman", "Bongard", "Bowers", "Boyd", "Cannon", "Cast", "Deitz", "Dewalt", "Ebner", "Frick", "Hancock", "Haworth", "Hesch", "Hoffman", "Kassing", "Knutson", "Lawless", "Lawicki", "Mccord", "McCormack", "Miller", "Myers", "Nugent", "Ortiz", "Orwig", "Ory", "Paiser", "Pak", "Pettigrew", "Quinn", "Quizoz", "Ramachandran", "Resnick", "Sagar", "Schickowski", "Schiebel", "Sellon", "Severson", "Shaffer", "Solberg", "Soloman", "Sonderling", "Soukup", "Soulis", "Stahl", "Sweeney", "Tandy", "Trebil", "Trusela", "Trussel", "Turco", "Uddin", "Uflan", "Ulrich", "Upson", "Vader", "Vail", "Valente", "Van Zandt", "Vanderpoel", "Ventotla", "Vogal", "Wagle", "Wagner", "Wakefield", "Weinstein", "Weiss", "Woo", "Yang", "Yates", "Yocum", "Zeaser", "Zeller", "Ziegler", "Bauer", "Baxster", "Casal", "Cataldi", "Caswell", "Celedon", "Chambers", "Chapman", "Christensen", "Darnell", "Davidson", "Davis", "DeLorenzo", "Dinkins", "Doran", "Dugelman", "Dugan", "Duffman", "Eastman", "Ferro", "Ferry", "Fletcher", "Fietzer", "Hylan", "Hydinger", "Illingsworth", "Ingram", "Irwin", "Jagtap", "Jenson", "Johnson", "Johnsen", "Jones", "Jurgenson", "Kalleg", "Kaskel", "Keller", "Leisinger", "LePage", "Lewis", "Linde", "Lulloff", "Maki", "Martin", "McGinnis", "Mills", "Moody", "Moore", "Napier", "Nelson", "Norquist", "Nuttle", "Olson", "Ostrander", "Reamer", "Reardon", "Reyes", "Rice", "Ripka", "Roberts", "Rogers", "Root", "Sandstrom", "Sawyer", "Schlicht", "Schmitt", "Schwager", "Schutz", "Schuster", "Tapia", "Thompson", "Tiernan", "Tisler"]
var types = ["hull specialist", "weapons expert", "booster engineer"]
var bonuses = [.1, .1, .1, .1, .1, .1, .1, .1,.2, .2, .2, .2, .2, .2, .2, .2, .2, .2, .5, .5, .5, 1, 2]
var lst = []
# Called when the node enters the scene tree for the first time.
func _ready():
	
	var curr = SceneManager.previousScene
	var info = GameStats.available[curr]
	if not GameStats.available[curr]:
			createCrew()
	
	for crewmate in GameStats.available[curr]:
		lst.append(crewmate)
	
	update_Crew()

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
	
	var curr = SceneManager.previousScene
	
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

func add_Crewmate(index):
	if (GameStats.coins < lst[index].cost || lst[index].hired):
		return
	else:
		match lst[index].type:
			"hull specialist":
				GameStats.health = GameStats.health * (1 + lst[index].bonus)
			"weapons expert":
				GameStats.attack = GameStats.attack * (1 + lst[index].bonus)
			"booster engineer":
				GameStats.speed = GameStats.speed * (1 + lst[index].bonus)
		
		GameStats.coins = GameStats.coins - lst[index].cost
		lst[index].firstName = ""
		lst[index].lastName = ""
		lst[index].type = "Hired"
		lst[index].hired = true
		update_Crew()
		
func _on_Hire1_pressed():
	add_Crewmate(0)

func _on_Hire2_pressed():
	add_Crewmate(1)

func _on_Hire3_pressed():
	add_Crewmate(2)

func _on_Hire4_pressed():
	add_Crewmate(3)

func _on_Hire5_pressed():
	add_Crewmate(4)

func _on_Hire6_pressed():
	add_Crewmate(5)

func _on_Hire7_pressed():
	add_Crewmate(6)

func _on_Hire8_pressed():
	add_Crewmate(7)

func _on_Hire9_pressed():
	add_Crewmate(8)

