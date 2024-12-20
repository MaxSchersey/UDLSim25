extends Node

var array2Drosters = []

var RosterDictSingles = {
	"Arizona Almighty": "Dr. Mario",
	"Snake Oli Merchants": "Mega Man",
	"6:16 in Seattle": "Pokemon Trainer",
	"Baba Keke Jiji and Fofo": "Ice Climbers",
	"Hardcore Parkour": "King Dedede",
	"Meet n' Falc Kingdom": "Dr. Mario",
	"BIG PLACEHOLDER": "Yoshi",
	"Dream Big, Fart Loud": "Lucario",
	"Pokeymons": "Lucario",
	"Coffin Fitters": "Wii Fit Trainer",
	"In the Flow State": "Sonic",
	"Brendini's Genies": "Mr. Game & Watch",
	"NPC Adventure Rescue Squad": "Captain Falcon",
	"Stardenburdenhardenbart": "Palutena",
	"BlazeBallin: Peak Fiction": "Byleth",
	"Da Frizzadonkeys": "Link",
	"On Mah Son": "Captain Falcon",
	"The Ballin' Association": "Olimar",
	"The Bone Rattlers": "Banjo & Kazooie",
	"Based Opinions": "Samus",
	"Saturday Morning Cartoons": "Villager",
	"Taskmasters III": "King Dedede",
	"Goku's Katnisses": "Daisy",
	"Over-Day Out Death": "Robin",
	"DondoIt": "Ryu",
	"The Logical Endpoint of Man's Hubris": "Captain Falcon",
	"Toilet Crusaders": "Olimar",
	"The Marios": "Mario",
	"Wagwan University": "Little Mac",
	"Orange You Glad": "Cloud",
	"Modified Memories": "King K. Rool",
	"Mike's Money Makers": "Yoshi",
	"Trickle Down-Smash Economics": "Mega Man",
	"Nine Lives in Ninjutsu": "Yoshi",
	"Mom Doers": "Wario",
	"Suomi Blimp Squadron": "Mega Man",
	"A Maglev into the Inner Machinations of God": "Lucas",
	"Smeten": "Min Min",
	"Filidutter": "Mr. Game & Watch",
	"The Sheikah Shadows": "Ryu"	
	}

var RosterDictFS = {
	"Arizona Almighty": "Snake",
	"Snake Oli Merchants": "Wario",
	"6:16 in Seattle": "Zelda",
	"Baba Keke Jiji and Fofo": "R.O.B.",
	"Hardcore Parkour": "Snake",
	"Meet n' Falc Kingdom": "Ridley",
	"BIG PLACEHOLDER": "Hero",
	"Dream Big, Fart Loud": "Chrom",
	"Pokeymons": "Ridley",
	"Coffin Fitters": "Pit",
	"In the Flow State": "Snake",
	"Brendini's Genies": "Bowser",
	"NPC Adventure Rescue Squad": "Snake",
	"Stardenburdenhardenbart": "Duck Hunt",
	"BlazeBallin: Peak Fiction": "Marth",
	"Da Frizzadonkeys": "Yoshi",
	"On Mah Son": "Donkey Kong",
	"The Ballin' Association": "Mewtwo",
	"The Bone Rattlers": "Shulk",
	"Based Opinions": "Toon Link",
	"Saturday Morning Cartoons": "Bowser Jr.",
	"Taskmasters III": "Ganondorf",
	"Goku's Katnisses": "Chrom",
	"Over-Day Out Death": "Ike",
	"DondoIt": "Terry",
	"The Logical Endpoint of Man's Hubris": "Steve",
	"Toilet Crusaders": "Palutena",
	"The Marios": "Palutena",
	"Wagwan University": "Wario",
	"Orange You Glad": "Fox",
	"Modified Memories": "Zelda",
	"Mike's Money Makers": "R.O.B.",
	"Trickle Down-Smash Economics": "Diddy Kong",
	"Nine Lives in Ninjutsu": "Lucario",
	"Mom Doers": "Ganondorf",
	"Suomi Blimp Squadron": "Steve",
	"A Maglev into the Inner Machinations of God": "Wolf",
	"Smeten": "Zero Suit Samus",
	"Filidutter": "Samus",
	"The Sheikah Shadows": "Mewtwo"
	}

var RosterDictStamina = {
	"Arizona Almighty": "Byleth",
	"Snake Oli Merchants": "Olimar",
	"6:16 in Seattle": "Daisy",
	"Baba Keke Jiji and Fofo": "Olimar",
	"Hardcore Parkour": "Kazuya",
	"Meet n' Falc Kingdom": "Pichu",
	"BIG PLACEHOLDER": "Mii Swordfighter",
	"Dream Big, Fart Loud": "Corrin",
	"Pokeymons": "Greninja",
	"Coffin Fitters": "Little Mac",
	"In the Flow State": "Wolf",
	"Brendini's Genies": "Ness",
	"NPC Adventure Rescue Squad": "Pichu",
	"Stardenburdenhardenbart": "Terry",
	"BlazeBallin: Peak Fiction": "Pyra/Mythra",
	"Da Frizzadonkeys": "Mii Brawler",
	"On Mah Son": "Wolf",
	"The Ballin' Association": "Banjo & Kazooie",
	"The Bone Rattlers": "Corrin",
	"Based Opinions": "Fox",
	"Saturday Morning Cartoons": "Pikachu",
	"Taskmasters III": "Bowser",
	"Goku's Katnisses": "Young Link",
	"Over-Day Out Death": "Young Link",
	"DondoIt": "Ganondorf",
	"The Logical Endpoint of Man's Hubris": "Pichu",
	"Toilet Crusaders": "Mii Brawler",
	"The Marios": "Corrin",
	"Wagwan University": "Ryu",
	"Orange You Glad": "Incineroar",
	"Modified Memories": "Pikachu",
	"Mike's Money Makers": "Pyra/Mythra",
	"Trickle Down-Smash Economics": "Pyra/Mythra",
	"Nine Lives in Ninjutsu": "Mii Brawler",
	"Mom Doers": "Ness",
	"Suomi Blimp Squadron": "Terry",
	"A Maglev into the Inner Machinations of God": "Mario",
	"Smeten": "Zelda",
	"Filidutter": "King Dedede",
	"The Sheikah Shadows": "Isabelle"
	}

var RosterDictDoubles1 = {
	"Arizona Almighty": "Bowser",
	"Snake Oli Merchants": "Isabelle",
	"6:16 in Seattle": "Mega Man",
	"Baba Keke Jiji and Fofo": "Meta Knight",
	"Hardcore Parkour": "Cloud",
	"Meet n' Falc Kingdom": "Sonic",
	"BIG PLACEHOLDER": "PAC-Man",
	"Dream Big, Fart Loud": "Byleth",
	"Pokeymons": "Jigglypuff",
	"Coffin Fitters": "Ike",
	"In the Flow State": "Samus",
	"Brendini's Genies": "Pichu",
	"NPC Adventure Rescue Squad": "PAC-Man",
	"Stardenburdenhardenbart": "Cloud",
	"BlazeBallin: Peak Fiction": "Dark Samus",
	"Da Frizzadonkeys": "Bowser Jr.",
	"On Mah Son": "Dark Samus",
	"The Ballin' Association": "Wii Fit Trainer",
	"The Bone Rattlers": "Joker",
	"Based Opinions": "Ganondorf",
	"Saturday Morning Cartoons": "Kirby",
	"Taskmasters III": "Jigglypuff",
	"Goku's Katnisses": "Villager",
	"Over-Day Out Death": "Palutena",
	"DondoIt": "Dark Samus",
	"The Logical Endpoint of Man's Hubris": "Sora",
	"Toilet Crusaders": "Mega Man",
	"The Marios": "Dr. Mario",
	"Wagwan University": "Donkey Kong",
	"Orange You Glad": "Min Min",
	"Modified Memories": "PAC-Man",
	"Mike's Money Makers": "Sonic",
	"Trickle Down-Smash Economics": "Piranha Plant",
	"Nine Lives in Ninjutsu": "Mii Swordfighter",
	"Mom Doers": "Isabelle",
	"Suomi Blimp Squadron": "Dark Pit",
	"A Maglev into the Inner Machinations of God": "Kirby",
	"Smeten": "Lucina",
	"Filidutter": "Olimar",
	"The Sheikah Shadows": "Captain Falcon"
	}

var RosterDictDoubles2 = {
	"Arizona Almighty": "Falco",
	"Snake Oli Merchants": "Inkling",
	"6:16 in Seattle": "Rosalina & Luma",
	"Baba Keke Jiji and Fofo": "Jigglypuff",
	"Hardcore Parkour": "Piranha Plant",
	"Meet n' Falc Kingdom": "Mii Gunner",
	"BIG PLACEHOLDER": "Dark Pit",
	"Dream Big, Fart Loud": "Lucina",
	"Pokeymons": "Pokemon Trainer",
	"Coffin Fitters": "Dr. Mario",
	"In the Flow State": "Dark Pit",
	"Brendini's Genies": "Chrom",
	"NPC Adventure Rescue Squad": "Mii Swordfighter",
	"Stardenburdenhardenbart": "Sephiroth",
	"BlazeBallin: Peak Fiction": "Inkling",
	"Da Frizzadonkeys": "Peach",
	"On Mah Son": "Byleth",
	"The Ballin' Association": "Ice Climbers",
	"The Bone Rattlers": "Pyra/Mythra",
	"Based Opinions": "Greninja",
	"Saturday Morning Cartoons": "Mii Swordfighter",
	"Taskmasters III": "Corrin",
	"Goku's Katnisses": "Isabelle",
	"Over-Day Out Death": "Marth",
	"DondoIt": "Jigglypuff",
	"The Logical Endpoint of Man's Hubris": "Lucas",
	"Toilet Crusaders": "PAC-Man",
	"The Marios": "Piranha Plant",
	"Wagwan University": "Diddy Kong",
	"Orange You Glad": "Captain Falcon",
	"Modified Memories": "Donkey Kong",
	"Mike's Money Makers": "Dark Pit",
	"Trickle Down-Smash Economics": "Hero",
	"Nine Lives in Ninjutsu": "Sonic",
	"Mom Doers": "Falco",
	"Suomi Blimp Squadron": "Mii Gunner",
	"A Maglev into the Inner Machinations of God": "Inkling",
	"Smeten": "Peach",
	"Filidutter": "R.O.B.",
	"The Sheikah Shadows": "Link"
	}

var RosterDictSquads1 = {
	"Arizona Almighty": "PAC-Man",
	"Snake Oli Merchants": "Sonic",
	"6:16 in Seattle": "Donkey Kong",
	"Baba Keke Jiji and Fofo": "Zelda",
	"Hardcore Parkour": "Chrom",
	"Meet n' Falc Kingdom": "Donkey Kong",
	"BIG PLACEHOLDER": "Ike",
	"Dream Big, Fart Loud": "Jigglypuff",
	"Pokeymons": "Kirby",
	"Coffin Fitters": "Roy",
	"In the Flow State": "Sora",
	"Brendini's Genies": "Wolf",
	"NPC Adventure Rescue Squad": "Bowser Jr.",
	"Stardenburdenhardenbart": "Roy",
	"BlazeBallin: Peak Fiction": "Meta Knight",
	"Da Frizzadonkeys": "Piranha Plant",
	"On Mah Son": "Steve",
	"The Ballin' Association": "Zelda",
	"The Bone Rattlers": "Min Min",
	"Based Opinions": "Roy",
	"Saturday Morning Cartoons": "Link",
	"Taskmasters III": "Mewtwo",
	"Goku's Katnisses": "Little Mac",
	"Over-Day Out Death": "Lucario",
	"DondoIt": "Wii Fit Trainer",
	"The Logical Endpoint of Man's Hubris": "Bowser",
	"Toilet Crusaders": "King K. Rool",
	"The Marios": "Wario",
	"Wagwan University": "King K. Rool",
	"Orange You Glad": "Luigi",
	"Modified Memories": "Ridley",
	"Mike's Money Makers": "Mii Gunner",
	"Trickle Down-Smash Economics": "Joker",
	"Nine Lives in Ninjutsu": "Greninja",
	"Mom Doers": "Min Min",
	"Suomi Blimp Squadron": "Mr. Game & Watch",
	"A Maglev into the Inner Machinations of God": "Fox",
	"Smeten": "Robin",
	"Filidutter": "Kazuya",
	"The Sheikah Shadows": "Greninja"
	}

var RosterDictSquads2 = {
	"Arizona Almighty": "Shulk",
	"Snake Oli Merchants": "Snake",
	"6:16 in Seattle": "Ness",
	"Baba Keke Jiji and Fofo": "Banjo & Kazooie",
	"Hardcore Parkour": "Mr. Game & Watch",
	"Meet n' Falc Kingdom": "Falco",
	"BIG PLACEHOLDER": "Mii Gunner",
	"Dream Big, Fart Loud": "Robin",
	"Pokeymons": "Incineroar",
	"Coffin Fitters": "Ken",
	"In the Flow State": "Mii Gunner",
	"Brendini's Genies": "Villager",
	"NPC Adventure Rescue Squad": "Yoshi",
	"Stardenburdenhardenbart": "Marth",
	"BlazeBallin: Peak Fiction": "Dr. Mario",
	"Da Frizzadonkeys": "Diddy Kong",
	"On Mah Son": "Pit",
	"The Ballin' Association": "King K. Rool",
	"The Bone Rattlers": "Ken",
	"Based Opinions": "Wolf",
	"Saturday Morning Cartoons": "Inkling",
	"Taskmasters III": "Greninja",
	"Goku's Katnisses": "Pokemon Trainer",
	"Over-Day Out Death": "Falco",
	"DondoIt": "Rosalina & Luma",
	"The Logical Endpoint of Man's Hubris": "Shulk",
	"Toilet Crusaders": "Wii Fit Trainer",
	"The Marios": "Daisy",
	"Wagwan University": "Piranha Plant",
	"Orange You Glad": "Pichu",
	"Modified Memories": "Bowser Jr.",
	"Mike's Money Makers": "Kirby",
	"Trickle Down-Smash Economics": "Steve",
	"Nine Lives in Ninjutsu": "Robin",
	"Mom Doers": "Olimar",
	"Suomi Blimp Squadron": "Ice Climbers",
	"A Maglev into the Inner Machinations of God": "Hero",
	"Smeten": "Palutena",
	"Filidutter": "Terry",
	"The Sheikah Shadows": "Ken"
	}

var RosterDictSquads3 = {
	"Arizona Almighty": "Wii Fit Trainer",
	"Snake Oli Merchants": "Banjo & Kazooie",
	"6:16 in Seattle": "Richter",
	"Baba Keke Jiji and Fofo": "Samus",
	"Hardcore Parkour": "Dark Pit",
	"Meet n' Falc Kingdom": "Pikachu",
	"BIG PLACEHOLDER": "Lucas",
	"Dream Big, Fart Loud": "Peach",
	"Pokeymons": "Pikachu",
	"Coffin Fitters": "Richter",
	"In the Flow State": "Diddy Kong",
	"Brendini's Genies": "Lucas",
	"NPC Adventure Rescue Squad": "Shulk",
	"Stardenburdenhardenbart": "Lucina",
	"BlazeBallin: Peak Fiction": "Steve",
	"Da Frizzadonkeys": "Kirby",
	"On Mah Son": "Rosalina & Luma",
	"The Ballin' Association": "Samus",
	"The Bone Rattlers": "Robin",
	"Based Opinions": "Corrin",
	"Saturday Morning Cartoons": "R.O.B.",
	"Taskmasters III": "Wario",
	"Goku's Katnisses": "Ice Climbers",
	"Over-Day Out Death": "Ness",
	"DondoIt": "Cloud",
	"The Logical Endpoint of Man's Hubris": "Mr. Game & Watch",
	"Toilet Crusaders": "King Dedede",
	"The Marios": "Luigi",
	"Wagwan University": "Bayonetta",
	"Orange You Glad": "Terry",
	"Modified Memories": "Diddy Kong",
	"Mike's Money Makers": "Ridley",
	"Trickle Down-Smash Economics": "Daisy",
	"Nine Lives in Ninjutsu": "Incineroar",
	"Mom Doers": "Fox",
	"Suomi Blimp Squadron": "Daisy",
	"A Maglev into the Inner Machinations of God": "Lucario",
	"Smeten": "Rosalina & Luma",
	"Filidutter": "Shulk",
	"The Sheikah Shadows": "Pokemon Trainer"
	}

var RosterDictBench = {
	"Arizona Almighty": "Ike",
	"Snake Oli Merchants": "Hero",
	"6:16 in Seattle": "Falco",
	"Baba Keke Jiji and Fofo": "Duck Hunt",
	"Hardcore Parkour": "Bayonetta",
	"Meet n' Falc Kingdom": "Pit",
	"BIG PLACEHOLDER": "R.O.B.",
	"Dream Big, Fart Loud": "Lucas",
	"Pokeymons": "Lucina",
	"Coffin Fitters": "Mii Swordfighter",
	"In the Flow State": "Mario",
	"Brendini's Genies": "Pikachu",
	"NPC Adventure Rescue Squad": "Pyra/Mythra",
	"Stardenburdenhardenbart": "Sora",
	"BlazeBallin: Peak Fiction": "Bowser",
	"Da Frizzadonkeys": "King Dedede",
	"On Mah Son": "Marth",
	"The Ballin' Association": "Ken",
	"The Bone Rattlers": "Duck Hunt",
	"Based Opinions": "Hero",
	"Saturday Morning Cartoons": "Ice Climbers",
	"Taskmasters III": "Ike",
	"Goku's Katnisses": "Luigi",
	"Over-Day Out Death": "Banjo & Kazooie",
	"DondoIt": "Simon",
	"The Logical Endpoint of Man's Hubris": "Mewtwo",
	"Toilet Crusaders": "Pit",
	"The Marios": "Peach",
	"Wagwan University": "Ken",
	"Orange You Glad": "Ryu",
	"Modified Memories": "Min Min",
	"Mike's Money Makers": "Toon Link",
	"Trickle Down-Smash Economics": "King K. Rool",
	"Nine Lives in Ninjutsu": "Pokemon Trainer",
	"Mom Doers": "Rosalina & Luma",
	"Suomi Blimp Squadron": "Incineroar",
	"A Maglev into the Inner Machinations of God": "Young Link",
	"Smeten": "Ryu",
	"Filidutter": "Cloud",
	"The Sheikah Shadows": "Sheik"
	}

func _ready():
	
	#Establishing each 2d array's row and column count
	
	for i in range(10):
		array2Drosters.append([])
		for j in range(40):
			array2Drosters[i].append(0)

	#To fill rows in this array
	
	roster_init_setup(1, "Arizona Almighty")
	roster_init_setup(2, "Snake Oli Merchants")
	roster_init_setup(3, "6:16 in Seattle")
	roster_init_setup(4, "Baba Keke Jiji and Fofo")
	roster_init_setup(5, "Hardcore Parkour")
	roster_init_setup(6, "Meet n' Falc Kingdom")
	roster_init_setup(7, "BIG PLACEHOLDER")
	roster_init_setup(8, "Dream Big, Fart Loud")
	roster_init_setup(9, "Pokeymons")
	roster_init_setup(10, "Coffin Fitters")
	roster_init_setup(11, "In the Flow State")
	roster_init_setup(12, "Brendini's Genies")
	roster_init_setup(13, "NPC Adventure Rescue Squad")
	roster_init_setup(14, "Stardenburdenhardenbart")
	roster_init_setup(15, "BlazeBallin: Peak Fiction")
	roster_init_setup(16, "Da Frizzadonkeys")
	roster_init_setup(17, "On Mah Son")
	roster_init_setup(18, "The Ballin' Association")
	roster_init_setup(19, "The Bone Rattlers")
	roster_init_setup(20, "Based Opinions")
	roster_init_setup(21, "Saturday Morning Cartoons")
	roster_init_setup(22, "Taskmasters III")
	roster_init_setup(23, "Goku's Katnisses")
	roster_init_setup(24, "Over-Day Out Death")
	roster_init_setup(25, "DondoIt")
	roster_init_setup(26, "The Logical Endpoint of Man's Hubris")
	roster_init_setup(27, "Toilet Crusaders")
	roster_init_setup(28, "The Marios")
	roster_init_setup(29, "Wagwan University")
	roster_init_setup(30, "Orange You Glad")
	roster_init_setup(31, "Modified Memories")
	roster_init_setup(32, "Mike's Money Makers")
	roster_init_setup(33, "Trickle Down-Smash Economics")
	roster_init_setup(34, "Nine Lives in Ninjutsu")
	roster_init_setup(35, "Mom Doers")
	roster_init_setup(36, "Suomi Blimp Squadron")
	roster_init_setup(37, "A Maglev into the Inner Machinations of God")
	roster_init_setup(38, "Smeten")
	roster_init_setup(39, "Filidutter")
	roster_init_setup(40, "The Sheikah Shadows")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func roster_init_setup(RowCount, Team):
	set_roster(RowCount, Team, get_lineup(Team, "Singles"), get_lineup(Team, "Final Smash"), get_lineup(Team, "Stamina"), get_lineup(Team, "Doubles1"), get_lineup(Team, "Doubles2"), get_lineup(Team, "Squads1"), get_lineup(Team, "Squads2"), get_lineup(Team, "Squads3"), get_lineup(Team, "Bench"))

func set_roster(RowCount, Team, Singles, FS, Stamina, Doubles1, Doubles2, Squads1, Squads2, Squads3, Bench):
	array2Drosters.insert(RowCount, [Team, Singles, FS, Stamina, Doubles1, Doubles2, Squads1, Squads2, Squads3, Bench])

func set_lineup(Name, Mode, Char):
	if Mode == "Singles":
		RosterDictSingles[Name] = Char
	if Mode == "Final Smash":
		RosterDictFS[Name] = Char
	if Mode == "Stamina":
		RosterDictStamina[Name] = Char
	if Mode == "Doubles1":
		RosterDictDoubles1[Name] = Char
	if Mode == "Doubles2":
		RosterDictDoubles2[Name] = Char
	if Mode == "Squads1":
		RosterDictSquads1[Name] = Char
	if Mode == "Squads2":
		RosterDictSquads2[Name] = Char
	if Mode == "Squads3":
		RosterDictSquads3[Name] = Char
	if Mode == "Bench":
		RosterDictBench[Name] = Char

func get_roster(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Team No: " + str(RowCount) + ", Team Name: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Team No: " + str(RowCount) + ", Singles: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Team No: " + str(RowCount) + ", Final Smash: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Team No: " + str(RowCount) + ", Stamina: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("Team No: " + str(RowCount) + ", Doubles1: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("Team No: " + str(RowCount) + ", Doubles2: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 6:
		print("Team No: " + str(RowCount) + ", Squads1: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 7:
		print("Team No: " + str(RowCount) + ", Squads2: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 8:
		print("Team No: " + str(RowCount) + ", Squads3: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount == 9:
		print("Team No: " + str(RowCount) + ", Bench: " + str(array2Drosters[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >9:
		print("Team No. " + str(RowCount) + ", Invalid Column Count")
	return array2Drosters[RowCount][ColumnCount]

func get_lineup(Name, Mode):
	if Mode == "Singles":
		print("Team: " + Name + ", Singles: " + str(RosterDictSingles[Name]))
		return RosterDictSingles[Name]
	if Mode == "Final Smash":
		print("Team: " + Name + ", Final Smash: " + str(RosterDictFS[Name]))
		return RosterDictFS[Name]
	if Mode == "Stamina":
		print("Team: " + Name + ", Stamina: " + str(RosterDictStamina[Name]))
		return RosterDictStamina[Name]
	if Mode == "Doubles1":
		print("Team: " + Name + ", Doubles1: " + str(RosterDictDoubles1[Name]))
		return RosterDictDoubles1[Name]
	if Mode == "Doubles2":
		print("Team: " + Name + ", Doubles2: " + str(RosterDictDoubles2[Name]))
		return RosterDictDoubles2[Name]
	if Mode == "Squads1":
		print("Team: " + Name + ", Squads1: " + str(RosterDictSquads1[Name]))
		return RosterDictSquads1[Name]
	if Mode == "Squads2":
		print("Team: " + Name + ", Squads2: " + str(RosterDictSquads2[Name]))
		return RosterDictSquads2[Name]
	if Mode == "Squads3":
		print("Team: " + Name + ", Squads3: " + str(RosterDictSquads3[Name]))
		return RosterDictSquads3[Name]
	if Mode == "Bench":
		print("Team: " + Name + ", Bench: " + str(RosterDictBench[Name]))
		return RosterDictBench[Name]
	
