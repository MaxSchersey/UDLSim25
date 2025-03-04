extends Node

var tempname1
var tempwins1
var tempname2
var tempwins2

var StandingsDictWins = {
	"Arizona Almighty": 0,
	"Snake Oli Merchants": 0,
	"6:16 in Seattle": 0,
	"Baba Keke Jiji and Fofo": 0,
	"Hardcore Parkour": 0,
	"Meet n' Falc Kingdom": 0,
	"BIG PLACEHOLDER": 0,
	"Dream Big, Fart Loud": 0,
	"Pokeymons": 0,
	"Coffin Fitters": 0,
	"In the Flow State": 0,
	"Brendini's Genies": 0,
	"NPC Adventure Rescue Squad": 0,
	"Stardenburdenhardenbart": 0,
	"BlazeBallin: Peak Fiction": 0,
	"Da Frizzadonkeys": 0,
	"On Mah Son": 0,
	"The Ballin' Association": 0,
	"The Bone Rattlers": 0,
	"Based Opinions": 0,
	"Saturday Morning Cartoons": 0,
	"Taskmasters III": 0,
	"Goku's Katnisses": 0,
	"Over-Day Out Death": 0,
	"DondoIt": 0,
	"The Logical Endpoint of Man's Hubris": 0,
	"Toilet Crusaders": 0,
	"The Marios": 0,
	"Wagwan University": 0,
	"Orange You Glad": 0,
	"Modified Memories": 0,
	"Mike's Money Makers": 0,
	"Trickle Down-Smash Economics": 0,
	"Nine Lives in Ninjutsu": 0,
	"Mom Doers": 0,
	"Suomi Blimp Squadron": 0,
	"A Maglev into the Inner Machinations of God": 0,
	"Smeten": 0,
	"Filidutter": 0,
	"The Sheikah Shadows": 0	
	}

var StandingsDictLosses = {
	"Arizona Almighty": 0,
	"Snake Oli Merchants": 0,
	"6:16 in Seattle": 0,
	"Baba Keke Jiji and Fofo": 0,
	"Hardcore Parkour": 0,
	"Meet n' Falc Kingdom": 0,
	"BIG PLACEHOLDER": 0,
	"Dream Big, Fart Loud": 0,
	"Pokeymons": 0,
	"Coffin Fitters": 0,
	"In the Flow State": 0,
	"Brendini's Genies": 0,
	"NPC Adventure Rescue Squad": 0,
	"Stardenburdenhardenbart": 0,
	"BlazeBallin: Peak Fiction": 0,
	"Da Frizzadonkeys": 0,
	"On Mah Son": 0,
	"The Ballin' Association": 0,
	"The Bone Rattlers": 0,
	"Based Opinions": 0,
	"Saturday Morning Cartoons": 0,
	"Taskmasters III": 0,
	"Goku's Katnisses": 0,
	"Over-Day Out Death": 0,
	"DondoIt": 0,
	"The Logical Endpoint of Man's Hubris": 0,
	"Toilet Crusaders": 0,
	"The Marios": 0,
	"Wagwan University": 0,
	"Orange You Glad": 0,
	"Modified Memories": 0,
	"Mike's Money Makers": 0,
	"Trickle Down-Smash Economics": 0,
	"Nine Lives in Ninjutsu": 0,
	"Mom Doers": 0,
	"Suomi Blimp Squadron": 0,
	"A Maglev into the Inner Machinations of God": 0,
	"Smeten": 0,
	"Filidutter": 0,
	"The Sheikah Shadows": 0	
	}

var StandingsDictDifferential = {
	"Arizona Almighty": 0,
	"Snake Oli Merchants": 0,
	"6:16 in Seattle": 0,
	"Baba Keke Jiji and Fofo": 0,
	"Hardcore Parkour": 0,
	"Meet n' Falc Kingdom": 0,
	"BIG PLACEHOLDER": 0,
	"Dream Big, Fart Loud": 0,
	"Pokeymons": 0,
	"Coffin Fitters": 0,
	"In the Flow State": 0,
	"Brendini's Genies": 0,
	"NPC Adventure Rescue Squad": 0,
	"Stardenburdenhardenbart": 0,
	"BlazeBallin: Peak Fiction": 0,
	"Da Frizzadonkeys": 0,
	"On Mah Son": 0,
	"The Ballin' Association": 0,
	"The Bone Rattlers": 0,
	"Based Opinions": 0,
	"Saturday Morning Cartoons": 0,
	"Taskmasters III": 0,
	"Goku's Katnisses": 0,
	"Over-Day Out Death": 0,
	"DondoIt": 0,
	"The Logical Endpoint of Man's Hubris": 0,
	"Toilet Crusaders": 0,
	"The Marios": 0,
	"Wagwan University": 0,
	"Orange You Glad": 0,
	"Modified Memories": 0,
	"Mike's Money Makers": 0,
	"Trickle Down-Smash Economics": 0,
	"Nine Lives in Ninjutsu": 0,
	"Mom Doers": 0,
	"Suomi Blimp Squadron": 0,
	"A Maglev into the Inner Machinations of God": 0,
	"Smeten": 0,
	"Filidutter": 0,
	"The Sheikah Shadows": 0	
	}

var array2Dburritodiv = []
var array2Dcorndiv = []
var array2Dapplediv = []
var array2Dcarbombdiv = []
var array2Dwildwestdiv = []
var array2Ddeepsouthdiv = []
var array2Dbigeastdiv = []
var array2Dikeadiv = []
var array2Dalphawc = []
var array2Domegawc = []

func _ready():
	#Establishing each 2d array's row and column count
	
	for i in range(5):
		array2Dburritodiv.append([])
		for j in range(2):
			array2Dburritodiv[i].append(0)
	
	for i in range(5):
		array2Dcorndiv.append([])
		for j in range(2):
			array2Dcorndiv[i].append(0)
	
	for i in range(5):
		array2Dapplediv.append([])
		for j in range(2):
			array2Dapplediv[i].append(0)
	
	for i in range(5):
		array2Dcarbombdiv.append([])
		for j in range(2):
			array2Dcarbombdiv[i].append(0)
	
	for i in range(5):
		array2Dwildwestdiv.append([])
		for j in range(2):
			array2Dwildwestdiv[i].append(0)
	
	for i in range(5):
		array2Ddeepsouthdiv.append([])
		for j in range(2):
			array2Ddeepsouthdiv[i].append(0)
	
	for i in range(5):
		array2Dbigeastdiv.append([])
		for j in range(2):
			array2Dbigeastdiv[i].append(0)
	
	for i in range(5):
		array2Dikeadiv.append([])
		for j in range(2):
			array2Dikeadiv[i].append(0)
	
	for i in range(16):
		array2Dalphawc.append([])
		for j in range(2):
			array2Dalphawc[i].append(0)
		
	for i in range(16):
		array2Domegawc.append([])
		for j in range(2):
			array2Domegawc[i].append(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_standings(Name, Mode, Amount):
	if Mode == "Wins":
		StandingsDictWins[Name] = Amount
	if Mode == "Losses":
		StandingsDictLosses[Name] = Amount
	if Mode == "Differential":
		StandingsDictDifferential[Name] = Amount

func set_division(RowCount, Division, Team, Wins):
	if Division == "Burrito":
		array2Dburritodiv[RowCount] = [Team, Wins]
	if Division == "Corn":
		array2Dcorndiv[RowCount] = [Team, Wins]
	if Division == "Apple":
		array2Dapplediv[RowCount] = [Team, Wins]
	if Division == "Carbomb":
		array2Dcarbombdiv[RowCount] = [Team, Wins]
	if Division == "Wild West":
		array2Dwildwestdiv[RowCount] = [Team, Wins]
	if Division == "Deep South":
		array2Ddeepsouthdiv[RowCount] = [Team, Wins]
	if Division == "Big East":
		array2Dbigeastdiv[RowCount] = [Team, Wins]
	if Division == "Ikea":
		array2Dikeadiv[RowCount] = [Team, Wins]
	if Division == "Alpha":
		array2Dalphawc[RowCount] = [Team, Wins]
	if Division == "Omega":
		array2Domegawc[RowCount] = [Team, Wins]
	
func division_update():
	set_division(0, "Burrito", "Arizona Almighty", get_standings("Arizona Almighty", "Wins"))
	set_division(1, "Burrito", "Snake Oli Merchants", get_standings("Snake Oli Merchants", "Wins"))
	set_division(2, "Burrito", "6:16 in Seattle", get_standings("6:16 in Seattle", "Wins"))
	set_division(3, "Burrito", "Baba Keke Jiji and Fofo", get_standings("Baba Keke Jiji and Fofo", "Wins"))
	set_division(4, "Burrito", "Hardcore Parkour", get_standings("Hardcore Parkour", "Wins"))
	set_division(0, "Corn", "Meet n' Falc Kingdom", get_standings("Meet n' Falc Kingdom", "Wins"))
	set_division(1, "Corn", "BIG PLACEHOLDER", get_standings("BIG PLACEHOLDER", "Wins"))
	set_division(2, "Corn", "Dream Big, Fart Loud", get_standings("Dream Big, Fart Loud", "Wins"))
	set_division(3, "Corn", "Pokeymons", get_standings("Pokeymons", "Wins"))
	set_division(4, "Corn", "Coffin Fitters", get_standings("Coffin Fitters", "Wins"))
	set_division(0, "Apple", "In the Flow State", get_standings("In the Flow State", "Wins"))
	set_division(1, "Apple", "Brendini's Genies", get_standings("Brendini's Genies", "Wins"))
	set_division(2, "Apple", "NPC Adventure Rescue Squad", get_standings("NPC Adventure Rescue Squad", "Wins"))
	set_division(3, "Apple", "Stardenburdenhardenbart", get_standings("Stardenburdenhardenbart", "Wins"))
	set_division(4, "Apple", "BlazeBallin: Peak Fiction", get_standings("BlazeBallin: Peak Fiction", "Wins"))
	set_division(0, "Carbomb", "Da Frizzadonkeys", get_standings("Da Frizzadonkeys", "Wins"))
	set_division(1, "Carbomb", "On Mah Son", get_standings("On Mah Son", "Wins"))
	set_division(2, "Carbomb", "The Ballin' Association", get_standings("The Ballin' Association", "Wins"))
	set_division(3, "Carbomb", "The Bone Rattlers", get_standings("The Bone Rattlers", "Wins"))
	set_division(4, "Carbomb", "Based Opinions", get_standings("Based Opinions", "Wins"))
	set_division(0, "Wild West", "Saturday Morning Cartoons", get_standings("Saturday Morning Cartoons", "Wins"))
	set_division(1, "Wild West", "Taskmasters III", get_standings("Taskmasters III", "Wins"))
	set_division(2, "Wild West", "Goku's Katnisses", get_standings("Goku's Katnisses", "Wins"))
	set_division(3, "Wild West", "Over-Day Out Death", get_standings("Over-Day Out Death", "Wins"))
	set_division(4, "Wild West", "DondoIt", get_standings("DondoIt", "Wins"))
	set_division(0, "Deep South", "The Logical Endpoint of Man's Hubris", get_standings("The Logical Endpoint of Man's Hubris", "Wins"))
	set_division(1, "Deep South", "Toilet Crusaders", get_standings("Toilet Crusaders", "Wins"))
	set_division(2, "Deep South", "The Marios", get_standings("The Marios", "Wins"))
	set_division(3, "Deep South", "Wagwan University", get_standings("Wagwan University", "Wins"))
	set_division(4, "Deep South", "Orange You Glad", get_standings("Orange You Glad", "Wins"))
	set_division(0, "Big East", "Modified Memories", get_standings("Modified Memories", "Wins"))
	set_division(1, "Big East", "Mike's Money Makers", get_standings("Mike's Money Makers", "Wins"))
	set_division(2, "Big East", "Trickle Down-Smash Economics", get_standings("Trickle Down-Smash Economics", "Wins"))
	set_division(3, "Big East", "Nine Lives in Ninjutsu", get_standings("Nine Lives in Ninjutsu", "Wins"))
	set_division(4, "Big East", "Mom Doers", get_standings("Mom Doers", "Wins"))
	set_division(0, "Ikea", "Suomi Blimp Squadron", get_standings("Suomi Blimp Squadron", "Wins"))
	set_division(1, "Ikea", "A Maglev into the Inner Machinations of God", get_standings("A Maglev into the Inner Machinations of God", "Wins"))
	set_division(2, "Ikea", "Smeten", get_standings("Smeten", "Wins"))
	set_division(3, "Ikea", "Filidutter", get_standings("Filidutter", "Wins"))
	set_division(4, "Ikea", "The Sheikah Shadows", get_standings("The Sheikah Shadows", "Wins"))
	
	array2Dburritodiv.sort_custom(func(a, b): return a[1] > b[1])
	array2Dcorndiv.sort_custom(func(a, b): return a[1] > b[1])
	array2Dapplediv.sort_custom(func(a, b): return a[1] > b[1])
	array2Dcarbombdiv.sort_custom(func(a, b): return a[1] > b[1])
	array2Dwildwestdiv.sort_custom(func(a, b): return a[1] > b[1])
	array2Ddeepsouthdiv.sort_custom(func(a, b): return a[1] > b[1])
	array2Dbigeastdiv.sort_custom(func(a, b): return a[1] > b[1])
	array2Dikeadiv.sort_custom(func(a, b): return a[1] > b[1])
	
func wild_card_update():
	set_division(0, "Alpha", get_division("Burrito", 1, 0), get_standings(get_division("Burrito", 1, 0), "Wins"))
	set_division(1, "Alpha", get_division("Burrito", 2, 0), get_standings(get_division("Burrito", 2, 0), "Wins"))
	set_division(2, "Alpha", get_division("Burrito", 3, 0), get_standings(get_division("Burrito", 3, 0), "Wins"))
	set_division(3, "Alpha", get_division("Burrito", 4, 0), get_standings(get_division("Burrito", 4, 0), "Wins"))
	set_division(4, "Alpha", get_division("Corn", 1, 0), get_standings(get_division("Corn", 1, 0), "Wins"))
	set_division(5, "Alpha", get_division("Corn", 2, 0), get_standings(get_division("Corn", 2, 0), "Wins"))
	set_division(6, "Alpha", get_division("Corn", 3, 0), get_standings(get_division("Corn", 3, 0), "Wins"))
	set_division(7, "Alpha", get_division("Corn", 4, 0), get_standings(get_division("Corn", 4, 0), "Wins"))
	set_division(8, "Alpha", get_division("Apple", 1, 0), get_standings(get_division("Apple", 1, 0), "Wins"))
	set_division(9, "Alpha", get_division("Apple", 2, 0), get_standings(get_division("Apple", 2, 0), "Wins"))
	set_division(10, "Alpha", get_division("Apple", 3, 0), get_standings(get_division("Apple", 3, 0), "Wins"))
	set_division(11, "Alpha", get_division("Apple", 4, 0), get_standings(get_division("Apple", 4, 0), "Wins"))
	set_division(12, "Alpha", get_division("Carbomb", 1, 0), get_standings(get_division("Carbomb", 1, 0), "Wins"))
	set_division(13, "Alpha", get_division("Carbomb", 2, 0), get_standings(get_division("Carbomb", 2, 0), "Wins"))
	set_division(14, "Alpha", get_division("Carbomb", 3, 0), get_standings(get_division("Carbomb", 3, 0), "Wins"))
	set_division(15, "Alpha", get_division("Carbomb", 4, 0), get_standings(get_division("Carbomb", 4, 0), "Wins"))

	set_division(0, "Omega", get_division("Wild West", 1, 0), get_standings(get_division("Wild West", 1, 0), "Wins"))
	set_division(1, "Omega", get_division("Wild West", 2, 0), get_standings(get_division("Wild West", 2, 0), "Wins"))
	set_division(2, "Omega", get_division("Wild West", 3, 0), get_standings(get_division("Wild West", 3, 0), "Wins"))
	set_division(3, "Omega", get_division("Wild West", 4, 0), get_standings(get_division("Wild West", 4, 0), "Wins"))
	set_division(4, "Omega", get_division("Deep South", 1, 0), get_standings(get_division("Deep South", 1, 0), "Wins"))
	set_division(5, "Omega", get_division("Deep South", 2, 0), get_standings(get_division("Deep South", 2, 0), "Wins"))
	set_division(6, "Omega", get_division("Deep South", 3, 0), get_standings(get_division("Deep South", 3, 0), "Wins"))
	set_division(7, "Omega", get_division("Deep South", 4, 0), get_standings(get_division("Deep South", 4, 0), "Wins"))
	set_division(8, "Omega", get_division("Big East", 1, 0), get_standings(get_division("Big East", 1, 0), "Wins"))
	set_division(9, "Omega", get_division("Big East", 2, 0), get_standings(get_division("Big East", 2, 0), "Wins"))
	set_division(10, "Omega", get_division("Big East", 3, 0), get_standings(get_division("Big East", 3, 0), "Wins"))
	set_division(11, "Omega", get_division("Big East", 4, 0), get_standings(get_division("Big East", 4, 0), "Wins"))
	set_division(12, "Omega", get_division("Ikea", 1, 0), get_standings(get_division("Ikea", 1, 0), "Wins"))
	set_division(13, "Omega", get_division("Ikea", 2, 0), get_standings(get_division("Ikea", 2, 0), "Wins"))
	set_division(14, "Omega", get_division("Ikea", 3, 0), get_standings(get_division("Ikea", 3, 0), "Wins"))
	set_division(15, "Omega", get_division("Ikea", 4, 0), get_standings(get_division("Ikea", 4, 0), "Wins"))

	array2Dalphawc.sort_custom(func(a, b): return a[1] > b[1])
	array2Domegawc.sort_custom(func(a, b): return a[1] > b[1])

func get_standings(Name, Mode):
	if Mode == "Wins":
		#print("Team: " + Name + ", Wins: " + str(StandingsDictWins[Name]))
		return StandingsDictWins[Name]
	if Mode == "Losses":
		print("Team: " + Name + ", Losses: " + str(StandingsDictLosses[Name]))
		return StandingsDictLosses[Name]
	if Mode == "Differential":
		print("Team: " + Name + ", Differential: " + str(StandingsDictDifferential[Name]))
		return StandingsDictDifferential[Name]
		
func get_division(Division, RowCount, ColumnCount):
	if Division == "Burrito":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dburritodiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dburritodiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dburritodiv[RowCount][ColumnCount]
	if Division == "Corn":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dcorndiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dcorndiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dcorndiv[RowCount][ColumnCount]
	if Division == "Apple":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dapplediv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dapplediv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dapplediv[RowCount][ColumnCount]
	if Division == "Carbomb":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dcarbombdiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dcarbombdiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dcarbombdiv[RowCount][ColumnCount]
	if Division == "Wild West":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dwildwestdiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dwildwestdiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dwildwestdiv[RowCount][ColumnCount]
	if Division == "Deep South":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Ddeepsouthdiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Ddeepsouthdiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Ddeepsouthdiv[RowCount][ColumnCount]
	if Division == "Big East":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dbigeastdiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dbigeastdiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dbigeastdiv[RowCount][ColumnCount]
	if Division == "Ikea":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dikeadiv[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dikeadiv[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dikeadiv[RowCount][ColumnCount]
	if Division == "Alpha":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Dalphawc[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Dalphawc[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Dalphawc[RowCount][ColumnCount]
	if Division == "Omega":
		if ColumnCount == 0:
			print("Team No. " + str(RowCount) + ", Team Name: " + str(array2Domegawc[RowCount][ColumnCount]))
		if ColumnCount == 1:
			print("Team No. " + str(RowCount) + ", Win Count: " + str(array2Domegawc[RowCount][ColumnCount]))
		if ColumnCount <0 or ColumnCount >1:
			print("Team No. " + str(RowCount) + ", Invalid Column Count")
		return array2Domegawc[RowCount][ColumnCount]
		
func reset_standings():
	StandingsDictWins["Arizona Almighty"] = 0
	StandingsDictWins["Snake Oli Merchants"] = 0
	StandingsDictWins["6:16 in Seattle"] = 0
	StandingsDictWins["Baba Keke Jiji and Fofo"] = 0
	StandingsDictWins["Hardcore Parkour"] = 0
	StandingsDictWins["Meet n' Falc Kingdom"] = 0
	StandingsDictWins["BIG PLACEHOLDER"] = 0
	StandingsDictWins["Dream Big, Fart Loud"] = 0
	StandingsDictWins["Pokeymons"] = 0
	StandingsDictWins["Coffin Fitters"] = 0
	StandingsDictWins["In the Flow State"] = 0
	StandingsDictWins["Brendini's Genies"] = 0
	StandingsDictWins["NPC Adventure Rescue Squad"] = 0
	StandingsDictWins["Stardenburdenhardenbart"] = 0
	StandingsDictWins["BlazeBallin: Peak Fiction"] = 0
	StandingsDictWins["Da Frizzadonkeys"] = 0
	StandingsDictWins["On Mah Son"] = 0
	StandingsDictWins["The Ballin' Association"] = 0
	StandingsDictWins["The Bone Rattlers"] = 0
	StandingsDictWins["Based Opinions"] = 0
	StandingsDictWins["Saturday Morning Cartoons"] = 0
	StandingsDictWins["Taskmasters III"] = 0
	StandingsDictWins["Goku's Katnisses"] = 0
	StandingsDictWins["Over-Day Out Death"] = 0
	StandingsDictWins["DondoIt"] = 0
	StandingsDictWins["The Logical Endpoint of Man's Hubris"] = 0
	StandingsDictWins["Toilet Crusaders"] = 0
	StandingsDictWins["The Marios"] = 0
	StandingsDictWins["Wagwan University"] = 0
	StandingsDictWins["Orange You Glad"] = 0
	StandingsDictWins["Modified Memories"] = 0
	StandingsDictWins["Mike's Money Makers"] = 0
	StandingsDictWins["Trickle Down-Smash Economics"] = 0
	StandingsDictWins["Nine Lives in Ninjutsu"] = 0
	StandingsDictWins["Mom Doers"] = 0
	StandingsDictWins["Suomi Blimp Squadron"] = 0
	StandingsDictWins["A Maglev into the Inner Machinations of God"] = 0
	StandingsDictWins["Smeten"] = 0
	StandingsDictWins["Filidutter"] = 0
	StandingsDictWins["The Sheikah Shadows"] = 0
	
	StandingsDictLosses["Arizona Almighty"] = 0
	StandingsDictLosses["Snake Oli Merchants"] = 0
	StandingsDictLosses["6:16 in Seattle"] = 0
	StandingsDictLosses["Baba Keke Jiji and Fofo"] = 0
	StandingsDictLosses["Hardcore Parkour"] = 0
	StandingsDictLosses["Meet n' Falc Kingdom"] = 0
	StandingsDictLosses["BIG PLACEHOLDER"] = 0
	StandingsDictLosses["Dream Big, Fart Loud"] = 0
	StandingsDictLosses["Pokeymons"] = 0
	StandingsDictLosses["Coffin Fitters"] = 0
	StandingsDictLosses["In the Flow State"] = 0
	StandingsDictLosses["Brendini's Genies"] = 0
	StandingsDictLosses["NPC Adventure Rescue Squad"] = 0
	StandingsDictLosses["Stardenburdenhardenbart"] = 0
	StandingsDictLosses["BlazeBallin: Peak Fiction"] = 0
	StandingsDictLosses["Da Frizzadonkeys"] = 0
	StandingsDictLosses["On Mah Son"] = 0
	StandingsDictLosses["The Ballin' Association"] = 0
	StandingsDictLosses["The Bone Rattlers"] = 0
	StandingsDictLosses["Based Opinions"] = 0
	StandingsDictLosses["Saturday Morning Cartoons"] = 0
	StandingsDictLosses["Taskmasters III"] = 0
	StandingsDictLosses["Goku's Katnisses"] = 0
	StandingsDictLosses["Over-Day Out Death"] = 0
	StandingsDictLosses["DondoIt"] = 0
	StandingsDictLosses["The Logical Endpoint of Man's Hubris"] = 0
	StandingsDictLosses["Toilet Crusaders"] = 0
	StandingsDictLosses["The Marios"] = 0
	StandingsDictLosses["Wagwan University"] = 0
	StandingsDictLosses["Orange You Glad"] = 0
	StandingsDictLosses["Modified Memories"] = 0
	StandingsDictLosses["Mike's Money Makers"] = 0
	StandingsDictLosses["Trickle Down-Smash Economics"] = 0
	StandingsDictLosses["Nine Lives in Ninjutsu"] = 0
	StandingsDictLosses["Mom Doers"] = 0
	StandingsDictLosses["Suomi Blimp Squadron"] = 0
	StandingsDictLosses["A Maglev into the Inner Machinations of God"] = 0
	StandingsDictLosses["Smeten"] = 0
	StandingsDictLosses["Filidutter"] = 0
	StandingsDictLosses["The Sheikah Shadows"] = 0
	
	StandingsDictDifferential["Arizona Almighty"] = 0
	StandingsDictDifferential["Snake Oli Merchants"] = 0
	StandingsDictDifferential["6:16 in Seattle"] = 0
	StandingsDictDifferential["Baba Keke Jiji and Fofo"] = 0
	StandingsDictDifferential["Hardcore Parkour"] = 0
	StandingsDictDifferential["Meet n' Falc Kingdom"] = 0
	StandingsDictDifferential["BIG PLACEHOLDER"] = 0
	StandingsDictDifferential["Dream Big, Fart Loud"] = 0
	StandingsDictDifferential["Pokeymons"] = 0
	StandingsDictDifferential["Coffin Fitters"] = 0
	StandingsDictDifferential["In the Flow State"] = 0
	StandingsDictDifferential["Brendini's Genies"] = 0
	StandingsDictDifferential["NPC Adventure Rescue Squad"] = 0
	StandingsDictDifferential["Stardenburdenhardenbart"] = 0
	StandingsDictDifferential["BlazeBallin: Peak Fiction"] = 0
	StandingsDictDifferential["Da Frizzadonkeys"] = 0
	StandingsDictDifferential["On Mah Son"] = 0
	StandingsDictDifferential["The Ballin' Association"] = 0
	StandingsDictDifferential["The Bone Rattlers"] = 0
	StandingsDictDifferential["Based Opinions"] = 0
	StandingsDictDifferential["Saturday Morning Cartoons"] = 0
	StandingsDictDifferential["Taskmasters III"] = 0
	StandingsDictDifferential["Goku's Katnisses"] = 0
	StandingsDictDifferential["Over-Day Out Death"] = 0
	StandingsDictDifferential["DondoIt"] = 0
	StandingsDictDifferential["The Logical Endpoint of Man's Hubris"] = 0
	StandingsDictDifferential["Toilet Crusaders"] = 0
	StandingsDictDifferential["The Marios"] = 0
	StandingsDictDifferential["Wagwan University"] = 0
	StandingsDictDifferential["Orange You Glad"] = 0
	StandingsDictDifferential["Modified Memories"] = 0
	StandingsDictDifferential["Mike's Money Makers"] = 0
	StandingsDictDifferential["Trickle Down-Smash Economics"] = 0
	StandingsDictDifferential["Nine Lives in Ninjutsu"] = 0
	StandingsDictDifferential["Mom Doers"] = 0
	StandingsDictDifferential["Suomi Blimp Squadron"] = 0
	StandingsDictDifferential["A Maglev into the Inner Machinations of God"] = 0
	StandingsDictDifferential["Smeten"] = 0
	StandingsDictDifferential["Filidutter"] = 0
	StandingsDictDifferential["The Sheikah Shadows"] = 0
