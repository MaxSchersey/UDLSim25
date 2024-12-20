extends Node

var array2Dregularseason = []
var array2Dteamschedule = []
var array2Dpostseason = []

var TeamIDDict = {
	"Arizona Almighty": 1,
	"Snake Oli Merchants": 2,
	"6:16 in Seattle": 3,
	"Baba Keke Jiji and Fofo": 4,
	"Hardcore Parkour": 5,
	"Meet n' Falc Kingdom": 6,
	"BIG PLACEHOLDER": 7,
	"Dream Big, Fart Loud": 8,
	"Pokeymons": 9,
	"Coffin Fitters": 10,
	"In the Flow State": 11,
	"Brendini's Genies": 12,
	"NPC Adventure Rescue Squad": 13,
	"Stardenburdenhardenbart": 14,
	"BlazeBallin: Peak Fiction": 15,
	"Da Frizzadonkeys": 16,
	"On Mah Son": 17,
	"The Ballin' Association": 18,
	"The Bone Rattlers": 19,
	"Based Opinions": 20,
	"Saturday Morning Cartoons": 21,
	"Taskmasters III": 22,
	"Goku's Katnisses": 23,
	"Over-Day Out Death": 24,
	"DondoIt": 25,
	"The Logical Endpoint of Man's Hubris": 26,
	"Toilet Crusaders": 27,
	"The Marios": 28,
	"Wagwan University": 29,
	"Orange You Glad": 30,
	"Modified Memories": 31,
	"Mike's Money Makers": 32,
	"Trickle Down-Smash Economics": 33,
	"Nine Lives in Ninjutsu": 34,
	"Mom Doers": 35,
	"Suomi Blimp Squadron": 36,
	"A Maglev into the Inner Machinations of God": 37,
	"Smeten": 38,
	"Filidutter": 39,
	"The Sheikah Shadows": 40	
	}

# Called when the node enters the scene tree for the first time.
func _ready():

#Establishing each 2d array's row and column count
	
	for i in range(240):
		array2Dregularseason.append([])
		for j in range(2):
			array2Dregularseason[i].append(0)
	
	for i in range(40):
		array2Dteamschedule.append([])
		for j in range(13):
			array2Dteamschedule[i].append(0)
	
	for i in range(15):
		array2Dpostseason.append([])
		for j in range(2):
			array2Dpostseason[i].append(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_schedule(RowCount, Team1, Team2):
	array2Dregularseason.insert(RowCount, [Team1, Team2])

func set_teamschedule(RowCount, Team, Match1, Match2, Match3, Match4, Match5, Match6, Match7, Match8, Match9, Match10, Match11, Match12):
	array2Dteamschedule.insert(RowCount, [Team, Match1, Match2, Match3, Match4, Match5, Match6, Match7, Match8, Match9, Match10, Match11, Match12])

func get_schedule(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Reg. Season Match No. " + str(RowCount) + ", Team1: " + str(array2Dregularseason[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Reg. Season Match No. " + str(RowCount) + ", Team2: " + str(array2Dregularseason[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >1:
		print("Singles Result No. " + str(RowCount) + ", Invalid Column Count")
	return array2Dregularseason[RowCount][ColumnCount]

func get_teamschedule(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Team ID No. " + str(RowCount) + ", Team Name: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Team ID No. " + str(RowCount) + ", Week 1 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Team ID No. " + str(RowCount) + ", Week 2 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Team ID No. " + str(RowCount) + ", Week 3 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("Team ID No. " + str(RowCount) + ", Week 4 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("Team ID No. " + str(RowCount) + ", Week 5 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 6:
		print("Team ID No. " + str(RowCount) + ", Week 6 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 7:
		print("Team ID No. " + str(RowCount) + ", Week 7 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 8:
		print("Team ID No. " + str(RowCount) + ", Week 8 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 9:
		print("Team ID No. " + str(RowCount) + ", Week 9 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 10:
		print("Team ID No. " + str(RowCount) + ", Week 10 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 11:
		print("Team ID No. " + str(RowCount) + ", Week 11 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 12:
		print("Team ID No. " + str(RowCount) + ", Week 12 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount == 13:
		print("Team ID No. " + str(RowCount) + ", Week 13 Match ID: " + str(array2Dteamschedule[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >13:
		print("Team ID No. " + str(RowCount) + ", Invalid Column Count")
	return array2Dteamschedule[RowCount][ColumnCount]

func get_team_ID(Name):
	#print("Team: " + Name + ", ID: " + str(TeamIDDict[Name]))
	return TeamIDDict[Name]

func init_season_schedule():
	set_schedule(1, "Coffin Fitters", "Orange You Glad")
	set_schedule(2, "Meet n' Falc Kingdom", "The Marios")
	set_schedule(3, "Taskmasters III", "The Logical Endpoint of Man's Hubris")
	set_schedule(4, "Baba Keke Jiji and Fofo", "Goku's Katnisses")
	set_schedule(5, "BIG PLACEHOLDER", "The Ballin' Association")
	set_schedule(6, "Arizona Almighty", "Toilet Crusaders")
	set_schedule(7, "Brendini's Genies", "Trickle Down-Smash Economics")
	set_schedule(8, "The Bone Rattlers", "Smeten")
	set_schedule(9, "Nine Lives in Ninjutsu", "Filidutter")
	set_schedule(10, "Hardcore Parkour", "The Sheikah Shadows")
	set_schedule(11, "Dream Big, Fart Loud", "Saturday Morning Cartoons")
	set_schedule(12, "Da Frizzadonkeys", "DondoIt")
	set_schedule(13, "NPC Adventure Rescue Squad", "Based Opinions")
	set_schedule(14, "Stardenburdenhardenbart", "Mom Doers")
	set_schedule(15, "On Mah Son", "Suomi Blimp Squadron")
	set_schedule(16, "Pokeymons", "Wagwan University")
	set_schedule(17, "Snake Oli Merchants", "Over-Day Out Death")
	set_schedule(18, "BlazeBallin: Peak Fiction", "Modified Memories")
	set_schedule(19, "In the Flow State", "Mike's Money Makers")
	set_schedule(20, "6:16 in Seattle", "A Maglev into the Inner Machinations of God")
	set_schedule(21, "The Marios", "Filidutter")
	set_schedule(22, "Hardcore Parkour", "BlazeBallin: Peak Fiction")
	set_schedule(23, "DondoIt", "Nine Lives in Ninjutsu")
	set_schedule(24, "Taskmasters III", "Modified Memories")
	set_schedule(25, "Toilet Crusaders", "Smeten")
	set_schedule(26, "The Logical Endpoint of Man's Hubris", "The Sheikah Shadows")
	set_schedule(27, "Baba Keke Jiji and Fofo", "Brendini's Genies")
	set_schedule(28, "Wagwan University", "A Maglev into the Inner Machinations of God")
	set_schedule(29, "Dream Big, Fart Loud", "Based Opinions")
	set_schedule(30, "Arizona Almighty", "Mom Doers")
	set_schedule(31, "Pokeymons", "The Ballin' Association")
	set_schedule(32, "On Mah Son", "Saturday Morning Cartoons")
	set_schedule(33, "6:16 in Seattle", "Stardenburdenhardenbart")
	set_schedule(34, "Orange You Glad", "Suomi Blimp Squadron")
	set_schedule(35, "Over-Day Out Death", "Mike's Money Makers")
	set_schedule(36, "Coffin Fitters", "Da Frizzadonkeys")
	set_schedule(37, "Meet n' Falc Kingdom", "The Bone Rattlers")
	set_schedule(38, "Goku's Katnisses", "Trickle Down-Smash Economics")
	set_schedule(39, "Snake Oli Merchants", "In the Flow State")
	set_schedule(40, "BIG PLACEHOLDER", "NPC Adventure Rescue Squad")
	set_schedule(41, "Modified Memories", "The Sheikah Shadows")
	set_schedule(42, "The Logical Endpoint of Man's Hubris", "DondoIt")
	set_schedule(43, "The Marios", "Trickle Down-Smash Economics")
	set_schedule(44, "Baba Keke Jiji and Fofo", "Meet n' Falc Kingdom")
	set_schedule(45, "Stardenburdenhardenbart", "The Bone Rattlers")
	set_schedule(46, "6:16 in Seattle", "Coffin Fitters")
	set_schedule(47, "Over-Day Out Death", "Wagwan University")
	set_schedule(48, "Mom Doers", "A Maglev into the Inner Machinations of God")
	set_schedule(49, "Pokeymons", "Smeten")
	set_schedule(50, "Goku's Katnisses", "Toilet Crusaders")
	set_schedule(51, "In the Flow State", "Da Frizzadonkeys")
	set_schedule(52, "NPC Adventure Rescue Squad", "On Mah Son")
	set_schedule(53, "Brendini's Genies", "Based Opinions")
	set_schedule(54, "BlazeBallin: Peak Fiction", "The Ballin' Association")
	set_schedule(55, "Hardcore Parkour", "Dream Big, Fart Loud")
	set_schedule(56, "Taskmasters III", "Orange You Glad")
	set_schedule(57, "Snake Oli Merchants", "Suomi Blimp Squadron")
	set_schedule(58, "Saturday Morning Cartoons", "Nine Lives in Ninjutsu")
	set_schedule(59, "Arizona Almighty", "Filidutter")
	set_schedule(60, "BIG PLACEHOLDER", "Mike's Money Makers")
	set_schedule(61, "Smeten", "The Sheikah Shadows")
	set_schedule(62, "Goku's Katnisses", "Taskmasters III")
	set_schedule(63, "Mike's Money Makers", "Trickle Down-Smash Economics")
	set_schedule(64, "Stardenburdenhardenbart", "DondoIt")
	set_schedule(65, "Over-Day Out Death", "Orange You Glad")
	set_schedule(66, "Saturday Morning Cartoons", "The Marios")
	set_schedule(67, "In the Flow State", "Wagwan University")
	set_schedule(68, "6:16 in Seattle", "Hardcore Parkour")
	set_schedule(69, "The Bone Rattlers", "Based Opinions")
	set_schedule(70, "Baba Keke Jiji and Fofo", "Arizona Almighty")
	set_schedule(71, "The Ballin' Association", "Da Frizzadonkeys")
	set_schedule(72, "BIG PLACEHOLDER", "On Mah Son")
	set_schedule(73, "A Maglev into the Inner Machinations of God", "Filidutter")
	set_schedule(74, "Snake Oli Merchants", "NPC Adventure Rescue Squad")
	set_schedule(75, "Modified Memories", "Mom Doers")
	set_schedule(76, "Nine Lives in Ninjutsu", "Suomi Blimp Squadron")
	set_schedule(77, "Brendini's Genies", "BlazeBallin: Peak Fiction")
	set_schedule(78, "Coffin Fitters", "Meet n' Falc Kingdom")
	set_schedule(79, "Toilet Crusaders", "The Logical Endpoint of Man's Hubris")
	set_schedule(80, "Pokeymons", "Dream Big, Fart Loud")
	set_schedule(81, "DondoIt", "Taskmasters III")
	set_schedule(82, "Based Opinions", "The Sheikah Shadows")
	set_schedule(83, "The Marios", "Suomi Blimp Squadron")
	set_schedule(84, "The Ballin' Association", "Orange You Glad")
	set_schedule(85, "Dream Big, Fart Loud", "The Bone Rattlers")
	set_schedule(86, "Over-Day Out Death", "A Maglev into the Inner Machinations of God")
	set_schedule(87, "Hardcore Parkour", "Meet n' Falc Kingdom")
	set_schedule(88, "Baba Keke Jiji and Fofo", "Stardenburdenhardenbart")
	set_schedule(89, "Trickle Down-Smash Economics", "Smeten")
	set_schedule(90, "Goku's Katnisses", "Mom Doers")
	set_schedule(91, "Da Frizzadonkeys", "Filidutter")
	set_schedule(92, "On Mah Son", "Wagwan University")
	set_schedule(93, "Coffin Fitters", "In the Flow State")
	set_schedule(94, "BlazeBallin: Peak Fiction", "The Logical Endpoint of Man's Hubris")
	set_schedule(95, "NPC Adventure Rescue Squad", "Nine Lives in Ninjutsu")
	set_schedule(96, "6:16 in Seattle", "Pokeymons")
	set_schedule(97, "Toilet Crusaders", "Modified Memories")
	set_schedule(98, "Snake Oli Merchants", "BIG PLACEHOLDER")
	set_schedule(99, "Saturday Morning Cartoons", "Mike's Money Makers")
	set_schedule(100, "Arizona Almighty", "Brendini's Genies")
	set_schedule(101, "Dream Big, Fart Loud", "The Sheikah Shadows")
	set_schedule(102, "Hardcore Parkour", "Taskmasters III")
	set_schedule(103, "Goku's Katnisses", "Smeten")
	set_schedule(104, "Da Frizzadonkeys", "Based Opinions")
	set_schedule(105, "The Ballin' Association", "A Maglev into the Inner Machinations of God")
	set_schedule(106, "Wagwan University", "The Marios")
	set_schedule(107, "Coffin Fitters", "Filidutter")
	set_schedule(108, "Trickle Down-Smash Economics", "Mom Doers")
	set_schedule(109, "Over-Day Out Death", "DondoIt")
	set_schedule(110, "Baba Keke Jiji and Fofo", "Pokeymons")
	set_schedule(111, "The Bone Rattlers", "Toilet Crusaders")
	set_schedule(112, "Orange You Glad", "Nine Lives in Ninjutsu")
	set_schedule(113, "Arizona Almighty", "BlazeBallin: Peak Fiction")
	set_schedule(114, "NPC Adventure Rescue Squad", "Stardenburdenhardenbart")
	set_schedule(115, "Saturday Morning Cartoons", "Suomi Blimp Squadron")
	set_schedule(116, "In the Flow State", "Brendini's Genies")
	set_schedule(117, "BIG PLACEHOLDER", "The Logical Endpoint of Man's Hubris")
	set_schedule(118, "Snake Oli Merchants", "Mike's Money Makers")
	set_schedule(119, "Meet n' Falc Kingdom", "Modified Memories")
	set_schedule(120, "6:16 in Seattle", "On Mah Son")
	set_schedule(121, "Suomi Blimp Squadron", "The Sheikah Shadows")
	set_schedule(122, "DondoIt", "Trickle Down-Smash Economics")
	set_schedule(123, "Orange You Glad", "Toilet Crusaders")
	set_schedule(124, "6:16 in Seattle", "Arizona Almighty")
	set_schedule(125, "Nine Lives in Ninjutsu", "Mom Doers")
	set_schedule(126, "Snake Oli Merchants", "Hardcore Parkour")
	set_schedule(127, "In the Flow State", "BlazeBallin: Peak Fiction")
	set_schedule(128, "Over-Day Out Death", "Goku's Katnisses")
	set_schedule(129, "The Ballin' Association", "The Bone Rattlers")
	set_schedule(130, "Baba Keke Jiji and Fofo", "Da Frizzadonkeys")
	set_schedule(131, "On Mah Son", "Based Opinions")
	set_schedule(132, "Wagwan University", "Filidutter")
	set_schedule(133, "Coffin Fitters", "Dream Big, Fart Loud")
	set_schedule(134, "Pokeymons", "Stardenburdenhardenbart")
	set_schedule(135, "NPC Adventure Rescue Squad", "Brendini's Genies")
	set_schedule(136, "A Maglev into the Inner Machinations of God", "Smeten")
	set_schedule(137, "The Marios", "The Logical Endpoint of Man's Hubris")
	set_schedule(138, "Saturday Morning Cartoons", "Taskmasters III")
	set_schedule(139, "BIG PLACEHOLDER", "Meet n' Falc Kingdom")
	set_schedule(140, "Mike's Money Makers", "Modified Memories")
	set_schedule(141, "DondoIt", "Filidutter")
	set_schedule(142, "Mom Doers", "The Sheikah Shadows")
	set_schedule(143, "Coffin Fitters", "On Mah Son")
	set_schedule(144, "Hardcore Parkour", "NPC Adventure Rescue Squad")
	set_schedule(145, "Meet n' Falc Kingdom", "Based Opinions")
	set_schedule(146, "Stardenburdenhardenbart", "The Marios")
	set_schedule(147, "The Bone Rattlers", "Goku's Katnisses")
	set_schedule(148, "Orange You Glad", "A Maglev into the Inner Machinations of God")
	set_schedule(149, "Baba Keke Jiji and Fofo", "Trickle Down-Smash Economics")
	set_schedule(150, "The Logical Endpoint of Man's Hubris", "Smeten")
	set_schedule(151, "Brendini's Genies", "Toilet Crusaders")
	set_schedule(152, "Snake Oli Merchants", "The Ballin' Association")
	set_schedule(153, "6:16 in Seattle", "Nine Lives in Ninjutsu")
	set_schedule(154, "Wagwan University", "Mike's Money Makers")
	set_schedule(155, "BlazeBallin: Peak Fiction", "Taskmasters III")
	set_schedule(156, "Pokeymons", "Da Frizzadonkeys")
	set_schedule(157, "BIG PLACEHOLDER", "Suomi Blimp Squadron")
	set_schedule(158, "Over-Day Out Death", "Modified Memories")
	set_schedule(159, "In the Flow State", "Saturday Morning Cartoons")
	set_schedule(160, "Arizona Almighty", "Dream Big, Fart Loud")
	set_schedule(161, "Saturday Morning Cartoons", "DondoIt")
	set_schedule(162, "Hardcore Parkour", "The Bone Rattlers")
	set_schedule(163, "The Ballin' Association", "Based Opinions")
	set_schedule(164, "Mike's Money Makers", "Mom Doers")
	set_schedule(165, "Meet n' Falc Kingdom", "Brendini's Genies")
	set_schedule(166, "Modified Memories", "Smeten")
	set_schedule(167, "Wagwan University", "Toilet Crusaders")
	set_schedule(168, "Nine Lives in Ninjutsu", "Trickle Down-Smash Economics")
	set_schedule(169, "6:16 in Seattle", "Baba Keke Jiji and Fofo")
	set_schedule(170, "A Maglev into the Inner Machinations of God", "The Sheikah Shadows")
	set_schedule(171, "Coffin Fitters", "Pokeymons")
	set_schedule(172, "Goku's Katnisses", "The Marios")
	set_schedule(173, "Suomi Blimp Squadron", "Filidutter")
	set_schedule(174, "Orange You Glad", "The Logical Endpoint of Man's Hubris")
	set_schedule(175, "In the Flow State", "Stardenburdenhardenbart")
	set_schedule(176, "On Mah Son", "Da Frizzadonkeys")
	set_schedule(177, "Over-Day Out Death", "Taskmasters III")
	set_schedule(178, "BIG PLACEHOLDER", "Dream Big, Fart Loud")
	set_schedule(179, "Snake Oli Merchants", "Arizona Almighty")
	set_schedule(180, "NPC Adventure Rescue Squad", "BlazeBallin: Peak Fiction")
	set_schedule(181, "Taskmasters III", "The Sheikah Shadows")
	set_schedule(182, "Dream Big, Fart Loud", "Mom Doers")
	set_schedule(183, "Based Opinions", "The Logical Endpoint of Man's Hubris")
	set_schedule(184, "BlazeBallin: Peak Fiction", "The Bone Rattlers")
	set_schedule(185, "Hardcore Parkour", "Modified Memories")
	set_schedule(186, "Baba Keke Jiji and Fofo", "Smeten")
	set_schedule(187, "NPC Adventure Rescue Squad", "Orange You Glad")
	set_schedule(188, "Stardenburdenhardenbart", "On Mah Son")
	set_schedule(189, "Saturday Morning Cartoons", "Wagwan University")
	set_schedule(190, "DondoIt", "Toilet Crusaders")
	set_schedule(191, "Da Frizzadonkeys", "The Marios")
	set_schedule(192, "Brendini's Genies", "Goku's Katnisses")
	set_schedule(193, "The Ballin' Association", "Over-Day Out Death")
	set_schedule(194, "Trickle Down-Smash Economics", "Filidutter")
	set_schedule(195, "Pokeymons", "Nine Lives in Ninjutsu")
	set_schedule(196, "6:16 in Seattle", "In the Flow State")
	set_schedule(197, "Arizona Almighty", "BIG PLACEHOLDER")
	set_schedule(198, "Snake Oli Merchants", "Coffin Fitters")
	set_schedule(199, "Mike's Money Makers", "Suomi Blimp Squadron")
	set_schedule(200, "Meet n' Falc Kingdom", "A Maglev into the Inner Machinations of God")
	set_schedule(201, "Baba Keke Jiji and Fofo", "Hardcore Parkour")
	set_schedule(202, "Arizona Almighty", "Based Opinions")
	set_schedule(203, "The Ballin' Association", "On Mah Son")
	set_schedule(204, "DondoIt", "Goku's Katnisses")
	set_schedule(205, "Taskmasters III", "Mom Doers")
	set_schedule(206, "Dream Big, Fart Loud", "BlazeBallin: Peak Fiction")
	set_schedule(207, "Da Frizzadonkeys", "The Bone Rattlers")
	set_schedule(208, "Orange You Glad", "The Marios")
	set_schedule(209, "Wagwan University", "The Logical Endpoint of Man's Hubris")
	set_schedule(210, "Toilet Crusaders", "The Sheikah Shadows")
	set_schedule(211, "BIG PLACEHOLDER", "Coffin Fitters")
	set_schedule(212, "Trickle Down-Smash Economics", "Modified Memories")
	set_schedule(213, "Pokeymons", "Meet n' Falc Kingdom")
	set_schedule(214, "Snake Oli Merchants", "6:16 in Seattle")
	set_schedule(215, "Filidutter", "Smeten")
	set_schedule(216, "Over-Day Out Death", "Saturday Morning Cartoons")
	set_schedule(217, "Stardenburdenhardenbart", "Brendini's Genies")
	set_schedule(218, "Mike's Money Makers", "Nine Lives in Ninjutsu")
	set_schedule(219, "A Maglev into the Inner Machinations of God", "Suomi Blimp Squadron")
	set_schedule(220, "NPC Adventure Rescue Squad", "In the Flow State")
	set_schedule(221, "Snake Oli Merchants", "Baba Keke Jiji and Fofo")
	set_schedule(222, "6:16 in Seattle", "DondoIt")
	set_schedule(223, "BIG PLACEHOLDER", "Pokeymons")
	set_schedule(224, "In the Flow State", "The Ballin' Association")
	set_schedule(225, "Orange You Glad", "Wagwan University")
	set_schedule(226, "Filidutter", "The Sheikah Shadows")
	set_schedule(227, "Hardcore Parkour", "Arizona Almighty")
	set_schedule(228, "Stardenburdenhardenbart", "BlazeBallin: Peak Fiction")
	set_schedule(229, "Coffin Fitters", "Trickle Down-Smash Economics")
	set_schedule(230, "Based Opinions", "Taskmasters III")
	set_schedule(231, "The Logical Endpoint of Man's Hubris", "Mom Doers")
	set_schedule(232, "On Mah Son", "The Bone Rattlers")
	set_schedule(233, "The Marios", "Toilet Crusaders")
	set_schedule(234, "Saturday Morning Cartoons", "Goku's Katnisses")
	set_schedule(235, "NPC Adventure Rescue Squad", "Over-Day Out Death")
	set_schedule(236, "Brendini's Genies", "Da Frizzadonkeys")
	set_schedule(237, "Nine Lives in Ninjutsu", "Modified Memories")
	set_schedule(238, "Meet n' Falc Kingdom", "Dream Big, Fart Loud")
	set_schedule(239, "Mike's Money Makers", "A Maglev into the Inner Machinations of God")
	set_schedule(240, "Suomi Blimp Squadron", "Smeten")

	set_teamschedule(1, "Arizona Almighty", 6, 30, 59, 70, 100, 113, 124, 160, 179, 197, 202, 227)
	set_teamschedule(2, "Snake Oli Merchants", 17, 39, 57, 74, 98, 118, 126, 152, 179, 198, 214, 221)
	set_teamschedule(3, "6:16 in Seattle", 20, 33, 46, 68, 96, 120, 124, 153, 169, 196, 214, 222)
	set_teamschedule(4, "Baba Keke Jiji and Fofo", 4, 27, 44, 70, 88, 110, 130, 149, 169, 186, 201, 221)
	set_teamschedule(5, "Hardcore Parkour", 10, 22, 55, 68, 87, 102, 126, 144, 162, 185, 201, 227)
	set_teamschedule(6, "Meet n' Falc Kingdom", 2, 37, 44, 78, 87, 119, 139, 145, 165, 200, 213, 238)
	set_teamschedule(7, "BIG PLACEHOLDER", 5, 40, 60, 72, 98, 117, 139, 157, 178, 197, 211, 223)
	set_teamschedule(8, "Dream Big, Fart Loud", 11, 29, 55, 80, 85, 101, 133, 160, 178, 182, 206, 238)
	set_teamschedule(9, "Pokeymons", 16, 31, 49, 80, 96, 110, 134, 156, 171, 195, 213, 223)
	set_teamschedule(10, "Coffin Fitters", 1, 36, 46, 78, 93, 107, 133, 143, 171, 198, 211, 229)
	set_teamschedule(11, "In the Flow State", 19, 39, 51, 67, 93, 116, 127, 159, 175, 196, 220, 224)
	set_teamschedule(12, "Brendini's Genies", 7, 27, 53, 77, 100, 116, 135, 151, 165, 192, 217, 236)
	set_teamschedule(13, "NPC Adventure Rescue Squad", 13, 40, 52, 74, 95, 114, 135, 144, 180, 187, 220, 235)
	set_teamschedule(14, "Stardenburdenhardenbart", 14, 33, 45, 64, 88, 114, 134, 146, 175, 188, 217, 228)
	set_teamschedule(15, "BlazeBallin: Peak Fiction", 18, 22, 54, 77, 94, 113, 127, 155, 180, 184, 206, 228)
	set_teamschedule(16, "Da Frizzadonkeys", 12, 36, 51, 71, 91, 104, 130, 156, 176, 191, 207, 236)
	set_teamschedule(17, "On Mah Son", 15, 32, 52, 72, 92, 120, 131, 143, 176, 188, 203, 232)
	set_teamschedule(18, "The Ballin' Association", 5, 31, 54, 71, 84, 105, 129, 152, 163, 193, 203, 224)
	set_teamschedule(19, "The Bone Rattlers", 8, 37, 45, 69, 85, 111, 129, 147, 162, 184, 207, 232)
	set_teamschedule(20, "Based Opinions", 13, 29, 53, 69, 82, 104, 131, 145, 163, 183, 202, 230)
	set_teamschedule(21, "Saturday Morning Cartoons", 11, 32, 58, 66, 99, 115, 138, 159, 161, 189, 216, 234)
	set_teamschedule(22, "Taskmasters III", 3, 24, 56, 62, 81, 102, 138, 155, 177, 181, 205, 230)
	set_teamschedule(23, "Goku's Katnisses", 4, 38, 50, 62, 90, 103, 128, 147, 172, 192, 204, 234)
	set_teamschedule(24, "Over-Day Out Death", 17, 35, 47, 65, 86, 109, 128, 158, 177, 193, 216, 235)
	set_teamschedule(25, "DondoIt", 12, 23, 42, 64, 81, 109, 122, 141, 161, 190, 204, 222)
	set_teamschedule(26, "The Logical Endpoint of Man's Hubris", 3, 26, 42, 79, 94, 117, 137, 150, 174, 183, 209, 231)
	set_teamschedule(27, "Toilet Crusaders", 6, 25, 50, 79, 97, 111, 123, 151, 167, 190, 210, 233)
	set_teamschedule(28, "The Marios", 2, 21, 43, 66, 83, 106, 137, 146, 172, 191, 208, 233)
	set_teamschedule(29, "Wagwan University", 16, 28, 47, 67, 92, 106, 132, 154, 167, 189, 209, 225)
	set_teamschedule(30, "Orange You Glad", 1, 34, 56, 65, 84, 112, 123, 148, 174, 187, 208, 225)
	set_teamschedule(31, "Modified Memories", 18, 24, 41, 75, 97, 119, 140, 158, 166, 185, 212, 237)
	set_teamschedule(32, "Mike's Money Makers", 19, 35, 60, 63, 99, 118, 148, 154, 164, 199, 218, 239)
	set_teamschedule(33, "Trickle Down-Smash Economics", 7, 38, 43, 63, 89, 108, 122, 149, 168, 194, 212, 229)
	set_teamschedule(34, "Nine Lives in Ninjutsu", 9, 23, 58, 76, 95, 112, 125, 153, 168, 95, 218, 237)
	set_teamschedule(35, "Mom Doers", 14, 30, 48, 75, 90, 108, 125, 142, 164, 182, 205, 231)
	set_teamschedule(36, "Suomi Blimp Squadron", 15, 34, 57, 76, 83, 115, 121, 157, 173, 199, 219, 240)
	set_teamschedule(37, "A Maglev into the Inner Machinations of God", 20, 28, 48, 73, 86, 105, 136, 148, 170, 200, 219, 239)
	set_teamschedule(38, "Smeten", 8, 25, 49, 61, 89, 103, 136, 150, 166, 186, 215, 240)
	set_teamschedule(39, "Filidutter", 9, 21, 59, 73, 91, 107, 132, 141, 173, 194, 215, 226)
	set_teamschedule(40, "The Sheikah Shadows", 10, 26, 41, 61, 82, 101, 121, 142, 170, 181, 210, 226)

func init_wk13_schedule():
	set_schedule(241, Playoffs.get_playoff_pool("Alpha",0), Playoffs.get_playoff_pool("Alpha",7))
	set_schedule(242, Playoffs.get_playoff_pool("Alpha",1), Playoffs.get_playoff_pool("Alpha",6))
	set_schedule(243, Playoffs.get_playoff_pool("Alpha",2), Playoffs.get_playoff_pool("Alpha",5))
	set_schedule(244, Playoffs.get_playoff_pool("Alpha",3), Playoffs.get_playoff_pool("Alpha",4))
	
	set_schedule(245, Playoffs.get_playoff_pool("Omega",0), Playoffs.get_playoff_pool("Omega",7))
	set_schedule(246, Playoffs.get_playoff_pool("Omega",1), Playoffs.get_playoff_pool("Omega",6))
	set_schedule(247, Playoffs.get_playoff_pool("Omega",2), Playoffs.get_playoff_pool("Omega",5))
	set_schedule(248, Playoffs.get_playoff_pool("Omega",3), Playoffs.get_playoff_pool("Omega",4))

func init_wk14_schedule():
	set_schedule(249, Playoffs.get_round_2("Alpha",0), Playoffs.get_round_2("Alpha",3))
	set_schedule(250, Playoffs.get_round_2("Alpha",1), Playoffs.get_round_2("Alpha",2))
	
	set_schedule(251, Playoffs.get_round_2("Omega",0), Playoffs.get_round_2("Omega",3))
	set_schedule(252, Playoffs.get_round_2("Omega",1), Playoffs.get_round_2("Omega",2))

func init_wk15_schedule():
	set_schedule(253, Playoffs.get_round_3("Alpha",0), Playoffs.get_round_3("Alpha",1))

	set_schedule(254, Playoffs.get_round_3("Omega",0), Playoffs.get_round_3("Omega",1))

func init_wk16_schedule():
	set_schedule(255, Playoffs.get_round_4(0), Playoffs.get_round_4(1))
