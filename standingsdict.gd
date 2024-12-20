extends Node

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

func _ready():
	pass

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
	
func get_standings(Name, Mode):
	if Mode == "Wins":
		print("Team: " + Name + ", Wins: " + str(StandingsDictWins[Name]))
		return StandingsDictWins[Name]
	if Mode == "Losses":
		print("Team: " + Name + ", Losses: " + str(StandingsDictLosses[Name]))
		return StandingsDictLosses[Name]
	if Mode == "Differential":
		print("Team: " + Name + ", Differential: " + str(StandingsDictDifferential[Name]))
		return StandingsDictDifferential[Name]
	
