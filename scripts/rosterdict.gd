extends Node

var array2Drosters = []

var RosterDictSingles = {
	"Arizona Almighty": Character.get_char_slot(20),
	"Snake Oli Merchants": Character.get_char_slot(49),
	"6:16 in Seattle": Character.get_char_slot(38),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(17),
	"Hardcore Parkour": Character.get_char_slot(42),
	"Meet n' Falc Kingdom": Character.get_char_slot(20),
	"BIG PLACEHOLDER": Character.get_char_slot(6),
	"Dream Big, Fart Loud": Character.get_char_slot(44),
	"Pokeymons": Character.get_char_slot(44),
	"Coffin Fitters": Character.get_char_slot(50),
	"In the Flow State": Character.get_char_slot(41),
	"Brendini's Genies": Character.get_char_slot(30),
	"NPC Adventure Rescue Squad": Character.get_char_slot(12),
	"Stardenburdenhardenbart": Character.get_char_slot(54),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(77),
	"Da Frizzadonkeys": Character.get_char_slot(3),
	"On Mah Son": Character.get_char_slot(12),
	"The Ballin' Association": Character.get_char_slot(43),
	"The Bone Rattlers": Character.get_char_slot(75),
	"Based Opinions": Character.get_char_slot(4),
	"Saturday Morning Cartoons": Character.get_char_slot(48),
	"Taskmasters III": Character.get_char_slot(42),
	"Goku's Katnisses": Character.get_char_slot(15),
	"Over-Day Out Death": Character.get_char_slot(56),
	"DondoIt": Character.get_char_slot(60),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(12),
	"Toilet Crusaders": Character.get_char_slot(77),
	"The Marios": Character.get_char_slot(1),
	"Wagwan University": Character.get_char_slot(52),
	"Orange You Glad": Character.get_char_slot(62),
	"Modified Memories": Character.get_char_slot(69),
	"Mike's Money Makers": Character.get_char_slot(6),
	"Trickle Down-Smash Economics": Character.get_char_slot(49),
	"Nine Lives in Ninjutsu": Character.get_char_slot(6),
	"Mom Doers": Character.get_char_slot(35),
	"Suomi Blimp Squadron": Character.get_char_slot(49),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(40),
	"Smeten": Character.get_char_slot(78),
	"Filidutter": Character.get_char_slot(30),
	"The Sheikah Shadows": Character.get_char_slot(60)	
	}

var RosterDictFS = {
	"Arizona Almighty": Character.get_char_slot(36),
	"Snake Oli Merchants": Character.get_char_slot(35),
	"6:16 in Seattle": Character.get_char_slot(19),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(45),
	"Hardcore Parkour": Character.get_char_slot(36),
	"Meet n' Falc Kingdom": Character.get_char_slot(66),
	"BIG PLACEHOLDER": Character.get_char_slot(74),
	"Dream Big, Fart Loud": Character.get_char_slot(29),
	"Pokeymons": Character.get_char_slot(66),
	"Coffin Fitters": Character.get_char_slot(32),
	"In the Flow State": Character.get_char_slot(36),
	"Brendini's Genies": Character.get_char_slot(16),
	"NPC Adventure Rescue Squad": Character.get_char_slot(36),
	"Stardenburdenhardenbart": Character.get_char_slot(59),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(23),
	"Da Frizzadonkeys": Character.get_char_slot(6),
	"On Mah Son": Character.get_char_slot(2),
	"The Ballin' Association": Character.get_char_slot(27),
	"The Bone Rattlers": Character.get_char_slot(57),
	"Based Opinions": Character.get_char_slot(46),
	"Saturday Morning Cartoons": Character.get_char_slot(58),
	"Taskmasters III": Character.get_char_slot(26),
	"Goku's Katnisses": Character.get_char_slot(29),
	"Over-Day Out Death": Character.get_char_slot(37),
	"DondoIt": Character.get_char_slot(76),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(79),
	"Toilet Crusaders": Character.get_char_slot(54),
	"The Marios": Character.get_char_slot(54),
	"Wagwan University": Character.get_char_slot(35),
	"Orange You Glad": Character.get_char_slot(8),
	"Modified Memories": Character.get_char_slot(19),
	"Mike's Money Makers": Character.get_char_slot(45),
	"Trickle Down-Smash Economics": Character.get_char_slot(39),
	"Nine Lives in Ninjutsu": Character.get_char_slot(44),
	"Mom Doers": Character.get_char_slot(26),
	"Suomi Blimp Squadron": Character.get_char_slot(79),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(47),
	"Smeten": Character.get_char_slot(34),
	"Filidutter": Character.get_char_slot(4),
	"The Sheikah Shadows": Character.get_char_slot(27)
	}

var RosterDictStamina = {
	"Arizona Almighty": Character.get_char_slot(77),
	"Snake Oli Merchants": Character.get_char_slot(43),
	"6:16 in Seattle": Character.get_char_slot(15),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(43),
	"Hardcore Parkour": Character.get_char_slot(82),
	"Meet n' Falc Kingdom": Character.get_char_slot(21),
	"BIG PLACEHOLDER": Character.get_char_slot(85),
	"Dream Big, Fart Loud": Character.get_char_slot(63),
	"Pokeymons": Character.get_char_slot(53),
	"Coffin Fitters": Character.get_char_slot(52),
	"In the Flow State": Character.get_char_slot(47),
	"Brendini's Genies": Character.get_char_slot(11),
	"NPC Adventure Rescue Squad": Character.get_char_slot(21),
	"Stardenburdenhardenbart": Character.get_char_slot(76),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(81),
	"Da Frizzadonkeys": Character.get_char_slot(84),
	"On Mah Son": Character.get_char_slot(47),
	"The Ballin' Association": Character.get_char_slot(75),
	"The Bone Rattlers": Character.get_char_slot(63),
	"Based Opinions": Character.get_char_slot(8),
	"Saturday Morning Cartoons": Character.get_char_slot(9),
	"Taskmasters III": Character.get_char_slot(16),
	"Goku's Katnisses": Character.get_char_slot(25),
	"Over-Day Out Death": Character.get_char_slot(25),
	"DondoIt": Character.get_char_slot(26),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(21),
	"Toilet Crusaders": Character.get_char_slot(84),
	"The Marios": Character.get_char_slot(63),
	"Wagwan University": Character.get_char_slot(60),
	"Orange You Glad": Character.get_char_slot(71),
	"Modified Memories": Character.get_char_slot(9),
	"Mike's Money Makers": Character.get_char_slot(81),
	"Trickle Down-Smash Economics": Character.get_char_slot(81),
	"Nine Lives in Ninjutsu": Character.get_char_slot(84),
	"Mom Doers": Character.get_char_slot(11),
	"Suomi Blimp Squadron": Character.get_char_slot(76),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(1),
	"Smeten": Character.get_char_slot(19),
	"Filidutter": Character.get_char_slot(42),
	"The Sheikah Shadows": Character.get_char_slot(70)
	}

var RosterDictDoubles1 = {
	"Arizona Almighty": Character.get_char_slot(16),
	"Snake Oli Merchants": Character.get_char_slot(70),
	"6:16 in Seattle": Character.get_char_slot(49),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(31),
	"Hardcore Parkour": Character.get_char_slot(62),
	"Meet n' Falc Kingdom": Character.get_char_slot(41),
	"BIG PLACEHOLDER": Character.get_char_slot(55),
	"Dream Big, Fart Loud": Character.get_char_slot(77),
	"Pokeymons": Character.get_char_slot(13),
	"Coffin Fitters": Character.get_char_slot(37),
	"In the Flow State": Character.get_char_slot(4),
	"Brendini's Genies": Character.get_char_slot(21),
	"NPC Adventure Rescue Squad": Character.get_char_slot(55),
	"Stardenburdenhardenbart": Character.get_char_slot(62),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(5),
	"Da Frizzadonkeys": Character.get_char_slot(58),
	"On Mah Son": Character.get_char_slot(5),
	"The Ballin' Association": Character.get_char_slot(50),
	"The Bone Rattlers": Character.get_char_slot(73),
	"Based Opinions": Character.get_char_slot(26),
	"Saturday Morning Cartoons": Character.get_char_slot(7),
	"Taskmasters III": Character.get_char_slot(13),
	"Goku's Katnisses": Character.get_char_slot(48),
	"Over-Day Out Death": Character.get_char_slot(54),
	"DondoIt": Character.get_char_slot(5),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(83),
	"Toilet Crusaders": Character.get_char_slot(49),
	"The Marios": Character.get_char_slot(20),
	"Wagwan University": Character.get_char_slot(2),
	"Orange You Glad": Character.get_char_slot(78),
	"Modified Memories": Character.get_char_slot(55),
	"Mike's Money Makers": Character.get_char_slot(41),
	"Trickle Down-Smash Economics": Character.get_char_slot(72),
	"Nine Lives in Ninjutsu": Character.get_char_slot(85),
	"Mom Doers": Character.get_char_slot(70),
	"Suomi Blimp Squadron": Character.get_char_slot(33),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(7),
	"Smeten": Character.get_char_slot(74),
	"Filidutter": Character.get_char_slot(43),
	"The Sheikah Shadows": Character.get_char_slot(12)
	}

var RosterDictDoubles2 = {
	"Arizona Almighty": Character.get_char_slot(22),
	"Snake Oli Merchants": Character.get_char_slot(65),
	"6:16 in Seattle": Character.get_char_slot(51),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(13),
	"Hardcore Parkour": Character.get_char_slot(72),
	"Meet n' Falc Kingdom": Character.get_char_slot(86),
	"BIG PLACEHOLDER": Character.get_char_slot(33),
	"Dream Big, Fart Loud": Character.get_char_slot(24),
	"Pokeymons": Character.get_char_slot(38),
	"Coffin Fitters": Character.get_char_slot(20),
	"In the Flow State": Character.get_char_slot(33),
	"Brendini's Genies": Character.get_char_slot(29),
	"NPC Adventure Rescue Squad": Character.get_char_slot(85),
	"Stardenburdenhardenbart": Character.get_char_slot(80),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(65),
	"Da Frizzadonkeys": Character.get_char_slot(14),
	"On Mah Son": Character.get_char_slot(77),
	"The Ballin' Association": Character.get_char_slot(17),
	"The Bone Rattlers": Character.get_char_slot(81),
	"Based Opinions": Character.get_char_slot(53),
	"Saturday Morning Cartoons": Character.get_char_slot(85),
	"Taskmasters III": Character.get_char_slot(63),
	"Goku's Katnisses": Character.get_char_slot(70),
	"Over-Day Out Death": Character.get_char_slot(23),
	"DondoIt": Character.get_char_slot(13),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(40),
	"Toilet Crusaders": Character.get_char_slot(55),
	"The Marios": Character.get_char_slot(72),
	"Wagwan University": Character.get_char_slot(39),
	"Orange You Glad": Character.get_char_slot(12),
	"Modified Memories": Character.get_char_slot(2),
	"Mike's Money Makers": Character.get_char_slot(33),
	"Trickle Down-Smash Economics": Character.get_char_slot(74),
	"Nine Lives in Ninjutsu": Character.get_char_slot(41),
	"Mom Doers": Character.get_char_slot(22),
	"Suomi Blimp Squadron": Character.get_char_slot(86),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(65),
	"Smeten": Character.get_char_slot(14),
	"Filidutter": Character.get_char_slot(45),
	"The Sheikah Shadows": Character.get_char_slot(3)
	}

var RosterDictSquads1 = {
	"Arizona Almighty": Character.get_char_slot(55),
	"Snake Oli Merchants": Character.get_char_slot(41),
	"6:16 in Seattle": Character.get_char_slot(2),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(19),
	"Hardcore Parkour": Character.get_char_slot(29),
	"Meet n' Falc Kingdom": Character.get_char_slot(2),
	"BIG PLACEHOLDER": Character.get_char_slot(37),
	"Dream Big, Fart Loud": Character.get_char_slot(13),
	"Pokeymons": Character.get_char_slot(7),
	"Coffin Fitters": Character.get_char_slot(28),
	"In the Flow State": Character.get_char_slot(83),
	"Brendini's Genies": Character.get_char_slot(47),
	"NPC Adventure Rescue Squad": Character.get_char_slot(58),
	"Stardenburdenhardenbart": Character.get_char_slot(28),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(31),
	"Da Frizzadonkeys": Character.get_char_slot(72),
	"On Mah Son": Character.get_char_slot(79),
	"The Ballin' Association": Character.get_char_slot(19),
	"The Bone Rattlers": Character.get_char_slot(78),
	"Based Opinions": Character.get_char_slot(28),
	"Saturday Morning Cartoons": Character.get_char_slot(3),
	"Taskmasters III": Character.get_char_slot(27),
	"Goku's Katnisses": Character.get_char_slot(52),
	"Over-Day Out Death": Character.get_char_slot(44),
	"DondoIt": Character.get_char_slot(50),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(16),
	"Toilet Crusaders": Character.get_char_slot(69),
	"The Marios": Character.get_char_slot(35),
	"Wagwan University": Character.get_char_slot(69),
	"Orange You Glad": Character.get_char_slot(10),
	"Modified Memories": Character.get_char_slot(66),
	"Mike's Money Makers": Character.get_char_slot(86),
	"Trickle Down-Smash Economics": Character.get_char_slot(73),
	"Nine Lives in Ninjutsu": Character.get_char_slot(53),
	"Mom Doers": Character.get_char_slot(78),
	"Suomi Blimp Squadron": Character.get_char_slot(30),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(8),
	"Smeten": Character.get_char_slot(56),
	"Filidutter": Character.get_char_slot(82),
	"The Sheikah Shadows": Character.get_char_slot(53)
	}

var RosterDictSquads2 = {
	"Arizona Almighty": Character.get_char_slot(57),
	"Snake Oli Merchants": Character.get_char_slot(36),
	"6:16 in Seattle": Character.get_char_slot(11),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(75),
	"Hardcore Parkour": Character.get_char_slot(30),
	"Meet n' Falc Kingdom": Character.get_char_slot(22),
	"BIG PLACEHOLDER": Character.get_char_slot(86),
	"Dream Big, Fart Loud": Character.get_char_slot(56),
	"Pokeymons": Character.get_char_slot(71),
	"Coffin Fitters": Character.get_char_slot(61),
	"In the Flow State": Character.get_char_slot(86),
	"Brendini's Genies": Character.get_char_slot(48),
	"NPC Adventure Rescue Squad": Character.get_char_slot(6),
	"Stardenburdenhardenbart": Character.get_char_slot(23),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(20),
	"Da Frizzadonkeys": Character.get_char_slot(39),
	"On Mah Son": Character.get_char_slot(32),
	"The Ballin' Association": Character.get_char_slot(69),
	"The Bone Rattlers": Character.get_char_slot(61),
	"Based Opinions": Character.get_char_slot(47),
	"Saturday Morning Cartoons": Character.get_char_slot(65),
	"Taskmasters III": Character.get_char_slot(53),
	"Goku's Katnisses": Character.get_char_slot(38),
	"Over-Day Out Death": Character.get_char_slot(22),
	"DondoIt": Character.get_char_slot(51),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(57),
	"Toilet Crusaders": Character.get_char_slot(50),
	"The Marios": Character.get_char_slot(15),
	"Wagwan University": Character.get_char_slot(72),
	"Orange You Glad": Character.get_char_slot(21),
	"Modified Memories": Character.get_char_slot(58),
	"Mike's Money Makers": Character.get_char_slot(7),
	"Trickle Down-Smash Economics": Character.get_char_slot(79),
	"Nine Lives in Ninjutsu": Character.get_char_slot(56),
	"Mom Doers": Character.get_char_slot(43),
	"Suomi Blimp Squadron": Character.get_char_slot(17),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(74),
	"Smeten": Character.get_char_slot(54),
	"Filidutter": Character.get_char_slot(76),
	"The Sheikah Shadows": Character.get_char_slot(61)
	}

var RosterDictSquads3 = {
	"Arizona Almighty": Character.get_char_slot(50),
	"Snake Oli Merchants": Character.get_char_slot(75),
	"6:16 in Seattle": Character.get_char_slot(68),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(4),
	"Hardcore Parkour": Character.get_char_slot(33),
	"Meet n' Falc Kingdom": Character.get_char_slot(9),
	"BIG PLACEHOLDER": Character.get_char_slot(40),
	"Dream Big, Fart Loud": Character.get_char_slot(14),
	"Pokeymons": Character.get_char_slot(9),
	"Coffin Fitters": Character.get_char_slot(68),
	"In the Flow State": Character.get_char_slot(39),
	"Brendini's Genies": Character.get_char_slot(40),
	"NPC Adventure Rescue Squad": Character.get_char_slot(57),
	"Stardenburdenhardenbart": Character.get_char_slot(24),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(79),
	"Da Frizzadonkeys": Character.get_char_slot(7),
	"On Mah Son": Character.get_char_slot(51),
	"The Ballin' Association": Character.get_char_slot(4),
	"The Bone Rattlers": Character.get_char_slot(56),
	"Based Opinions": Character.get_char_slot(63),
	"Saturday Morning Cartoons": Character.get_char_slot(45),
	"Taskmasters III": Character.get_char_slot(35),
	"Goku's Katnisses": Character.get_char_slot(17),
	"Over-Day Out Death": Character.get_char_slot(11),
	"DondoIt": Character.get_char_slot(62),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(30),
	"Toilet Crusaders": Character.get_char_slot(42),
	"The Marios": Character.get_char_slot(10),
	"Wagwan University": Character.get_char_slot(64),
	"Orange You Glad": Character.get_char_slot(76),
	"Modified Memories": Character.get_char_slot(39),
	"Mike's Money Makers": Character.get_char_slot(66),
	"Trickle Down-Smash Economics": Character.get_char_slot(15),
	"Nine Lives in Ninjutsu": Character.get_char_slot(71),
	"Mom Doers": Character.get_char_slot(8),
	"Suomi Blimp Squadron": Character.get_char_slot(15),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(44),
	"Smeten": Character.get_char_slot(51),
	"Filidutter": Character.get_char_slot(57),
	"The Sheikah Shadows": Character.get_char_slot(38)
	}

var RosterDictBench = {
	"Arizona Almighty": Character.get_char_slot(37),
	"Snake Oli Merchants": Character.get_char_slot(74),
	"6:16 in Seattle": Character.get_char_slot(22),
	"Baba Keke Jiji and Fofo": Character.get_char_slot(59),
	"Hardcore Parkour": Character.get_char_slot(64),
	"Meet n' Falc Kingdom": Character.get_char_slot(32),
	"BIG PLACEHOLDER": Character.get_char_slot(45),
	"Dream Big, Fart Loud": Character.get_char_slot(40),
	"Pokeymons": Character.get_char_slot(24),
	"Coffin Fitters": Character.get_char_slot(85),
	"In the Flow State": Character.get_char_slot(1),
	"Brendini's Genies": Character.get_char_slot(9),
	"NPC Adventure Rescue Squad": Character.get_char_slot(81),
	"Stardenburdenhardenbart": Character.get_char_slot(83),
	"BlazeBallin: Peak Fiction": Character.get_char_slot(16),
	"Da Frizzadonkeys": Character.get_char_slot(42),
	"On Mah Son": Character.get_char_slot(23),
	"The Ballin' Association": Character.get_char_slot(61),
	"The Bone Rattlers": Character.get_char_slot(59),
	"Based Opinions": Character.get_char_slot(74),
	"Saturday Morning Cartoons": Character.get_char_slot(17),
	"Taskmasters III": Character.get_char_slot(37),
	"Goku's Katnisses": Character.get_char_slot(10),
	"Over-Day Out Death": Character.get_char_slot(75),
	"DondoIt": Character.get_char_slot(67),
	"The Logical Endpoint of Man's Hubris": Character.get_char_slot(27),
	"Toilet Crusaders": Character.get_char_slot(32),
	"The Marios": Character.get_char_slot(14),
	"Wagwan University": Character.get_char_slot(61),
	"Orange You Glad": Character.get_char_slot(60),
	"Modified Memories": Character.get_char_slot(78),
	"Mike's Money Makers": Character.get_char_slot(46),
	"Trickle Down-Smash Economics": Character.get_char_slot(69),
	"Nine Lives in Ninjutsu": Character.get_char_slot(38),
	"Mom Doers": Character.get_char_slot(51),
	"Suomi Blimp Squadron": Character.get_char_slot(71),
	"A Maglev into the Inner Machinations of God": Character.get_char_slot(25),
	"Smeten": Character.get_char_slot(60),
	"Filidutter": Character.get_char_slot(62),
	"The Sheikah Shadows": Character.get_char_slot(18)
	}

func _ready():
	
	#Establishing each 2d array's row and column count
	
	for i in range(40):
		array2Drosters.append([])
		for j in range(10):
			array2Drosters[i].append(0)

	#To fill rows in this array
	
	roster_init_setup(0, "Arizona Almighty")
	roster_init_setup(1, "Snake Oli Merchants")
	roster_init_setup(2, "6:16 in Seattle")
	roster_init_setup(3, "Baba Keke Jiji and Fofo")
	roster_init_setup(4, "Hardcore Parkour")
	roster_init_setup(5, "Meet n' Falc Kingdom")
	roster_init_setup(6, "BIG PLACEHOLDER")
	roster_init_setup(7, "Dream Big, Fart Loud")
	roster_init_setup(8, "Pokeymons")
	roster_init_setup(9, "Coffin Fitters")
	roster_init_setup(10, "In the Flow State")
	roster_init_setup(11, "Brendini's Genies")
	roster_init_setup(12, "NPC Adventure Rescue Squad")
	roster_init_setup(13, "Stardenburdenhardenbart")
	roster_init_setup(14, "BlazeBallin: Peak Fiction")
	roster_init_setup(15, "Da Frizzadonkeys")
	roster_init_setup(16, "On Mah Son")
	roster_init_setup(17, "The Ballin' Association")
	roster_init_setup(18, "The Bone Rattlers")
	roster_init_setup(19, "Based Opinions")
	roster_init_setup(20, "Saturday Morning Cartoons")
	roster_init_setup(21, "Taskmasters III")
	roster_init_setup(22, "Goku's Katnisses")
	roster_init_setup(23, "Over-Day Out Death")
	roster_init_setup(24, "DondoIt")
	roster_init_setup(25, "The Logical Endpoint of Man's Hubris")
	roster_init_setup(26, "Toilet Crusaders")
	roster_init_setup(27, "The Marios")
	roster_init_setup(28, "Wagwan University")
	roster_init_setup(29, "Orange You Glad")
	roster_init_setup(30, "Modified Memories")
	roster_init_setup(31, "Mike's Money Makers")
	roster_init_setup(32, "Trickle Down-Smash Economics")
	roster_init_setup(33, "Nine Lives in Ninjutsu")
	roster_init_setup(34, "Mom Doers")
	roster_init_setup(35, "Suomi Blimp Squadron")
	roster_init_setup(36, "A Maglev into the Inner Machinations of God")
	roster_init_setup(37, "Smeten")
	roster_init_setup(38, "Filidutter")
	roster_init_setup(39, "The Sheikah Shadows")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func roster_init_setup(RowCount, Team):
	set_roster(RowCount, Team, get_lineup(Team, "Singles"), get_lineup(Team, "Final Smash"), get_lineup(Team, "Stamina"), get_lineup(Team, "Doubles1"), get_lineup(Team, "Doubles2"), get_lineup(Team, "Squads1"), get_lineup(Team, "Squads2"), get_lineup(Team, "Squads3"), get_lineup(Team, "Bench"))

func set_roster(RowCount, Team, Singles, FS, Stamina, Doubles1, Doubles2, Squads1, Squads2, Squads3, Bench):
	array2Drosters[RowCount] = [Team, Singles, FS, Stamina, Doubles1, Doubles2, Squads1, Squads2, Squads3, Bench]

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
	
