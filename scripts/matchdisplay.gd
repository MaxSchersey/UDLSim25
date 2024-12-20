extends Node

var buttonprogress = 0
var overallt1score = 0
var overallt2score = 0
var matchscoreflag = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	match_beginning_labels()
	print("Match ID: " + str(MatchSim.matchrowtotal))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if buttonprogress == 5:
		$Button/Label.text = "Finish"
	else:
		$Button/Label.text = "Next"
	
	if buttonprogress == 1 and matchscoreflag == 1:
		match_score_labels("Singles")
	if buttonprogress == 2 and matchscoreflag == 1:
		match_score_labels("Final Smash")
	if buttonprogress == 3 and matchscoreflag == 1:
		match_score_labels("Stamina")
	if buttonprogress == 4 and matchscoreflag == 1:
		match_score_labels("Doubles")
	if buttonprogress == 5 and matchscoreflag == 1:
		match_score_labels("Squads")
	if buttonprogress == 6:
		buttonprogress = 0
		Global.Team2 = "Default"
		
		$"VBoxContainer/HBoxContainer2/ColorRect2/Singles Score".text = "0-0"
		$"VBoxContainer/HBoxContainer3/ColorRect2/FS Score".text = "0-0"
		$"VBoxContainer/HBoxContainer4/ColorRect2/Stamina Score".text = "0-0"
		$"VBoxContainer/HBoxContainer5/ColorRect2/Doubles Score".text = "0-0"
		$"VBoxContainer/HBoxContainer6/ColorRect2/Squads Score".text = "0-0"
		
		$VBoxContainer/HBoxContainer/ColorRect.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer/ColorRect3.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer2/ColorRect.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer2/ColorRect3.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer3/ColorRect.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer3/ColorRect3.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer4/ColorRect.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer4/ColorRect3.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer5/ColorRect.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer5/ColorRect3.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer6/ColorRect.color = Color(0, 0, 0, 1)
		$VBoxContainer/HBoxContainer6/ColorRect3.color = Color(0, 0, 0, 1)
		
		if Global.IsQuickplay == 1:
			Global.Team1 = "Default"
			Global.IsQuickplay = 0
			MatchSim.matchrowsingles = MatchSim.matchrowsingles - 1
			MatchSim.matchrowfs = MatchSim.matchrowfs - 1
			MatchSim.matchrowstamina = MatchSim.matchrowstamina - 1
			MatchSim.matchrowdoubles = MatchSim.matchrowdoubles - 1
			MatchSim.matchrowsquads = MatchSim.matchrowsquads - 1
			MatchSim.matchrowtotal = MatchSim.matchrowtotal - 1
			get_tree().change_scene_to_file("res://scenes/quickplayinit.tscn")
		else:
			if Global.SeasonWeek <= 12:
				MatchSim.matchrowsingles = Global.SeasonWeek * 20
				MatchSim.matchrowfs = Global.SeasonWeek * 20
				MatchSim.matchrowstamina = Global.SeasonWeek * 20
				MatchSim.matchrowdoubles = Global.SeasonWeek * 20
				MatchSim.matchrowsquads = Global.SeasonWeek * 20
				MatchSim.matchrowtotal = Global.SeasonWeek * 20
			if Global.SeasonWeek == 13:
				MatchSim.matchrowsingles = 248
				MatchSim.matchrowfs = 248
				MatchSim.matchrowstamina = 248
				MatchSim.matchrowdoubles = 248
				MatchSim.matchrowsquads = 248
				MatchSim.matchrowtotal = 248
			if Global.SeasonWeek == 14:
				MatchSim.matchrowsingles = 252
				MatchSim.matchrowfs = 252
				MatchSim.matchrowstamina = 252
				MatchSim.matchrowdoubles = 252
				MatchSim.matchrowsquads = 252
				MatchSim.matchrowtotal = 252
			if Global.SeasonWeek == 15:
				MatchSim.matchrowsingles = 254
				MatchSim.matchrowfs = 254
				MatchSim.matchrowstamina = 254
				MatchSim.matchrowdoubles = 254
				MatchSim.matchrowsquads = 254
				MatchSim.matchrowtotal = 254
			Global.SeasonWeek = (Global.SeasonWeek + 1)
			get_tree().change_scene_to_file("res://scenes/seasonhub.tscn")

	$"VBoxContainer/HBoxContainer/ColorRect2/Match Score".text = str(overallt1score) + "-" + str(overallt2score)

func match_beginning_labels():
	if Global.IsQuickplay == 1:
		$ColorRect/Label.text = "Quickplay"
	else:
		if Global.SeasonWeek <= 12:
			$ColorRect/Label.text = "Week " + str(Global.SeasonWeek)
		if Global.SeasonWeek == 13:
			$ColorRect/Label.text = "Playoffs - Conference Quarterfinals"
		if Global.SeasonWeek == 14:
			$ColorRect/Label.text = "Playoffs - Conference Semifinals"
		if Global.SeasonWeek == 15:
			$ColorRect/Label.text = "Playoffs - Conference Finals"
		if Global.SeasonWeek == 16:
			$ColorRect/Label.text = "Playoffs - UDL Championship"
	
	var buttonprogress = 0
	var overallt1score = 0
	var overallt2score = 0
	
	$"VBoxContainer/HBoxContainer/ColorRect/Team1 Name".text = Global.Team1
	$"VBoxContainer/HBoxContainer/ColorRect3/Team2 Name".text = Global.Team2
	$"VBoxContainer/HBoxContainer2/ColorRect/Team1 Singles".text = Rosters.get_lineup(Global.Team1, "Singles")
	$"VBoxContainer/HBoxContainer2/ColorRect3/Team2 Singles".text = Rosters.get_lineup(Global.Team2, "Singles")
	$"VBoxContainer/HBoxContainer3/ColorRect/Team1 FS".text = Rosters.get_lineup(Global.Team1, "Final Smash")
	$"VBoxContainer/HBoxContainer3/ColorRect3/Team2 FS".text = Rosters.get_lineup(Global.Team2, "Final Smash")
	$"VBoxContainer/HBoxContainer4/ColorRect/Team1 Stamina".text = Rosters.get_lineup(Global.Team1, "Stamina")
	$"VBoxContainer/HBoxContainer4/ColorRect3/Team2 Stamina".text = Rosters.get_lineup(Global.Team2, "Stamina")
	$"VBoxContainer/HBoxContainer5/ColorRect/Team1 Doubles".text = (Rosters.get_lineup(Global.Team1, "Doubles1") + " / " + Rosters.get_lineup(Global.Team1, "Doubles2"))
	$"VBoxContainer/HBoxContainer5/ColorRect3/Team2 Doubles".text = (Rosters.get_lineup(Global.Team2, "Doubles1") + " / " + Rosters.get_lineup(Global.Team2, "Doubles2"))
	$"VBoxContainer/HBoxContainer6/ColorRect/Team1 Squads".text = (Rosters.get_lineup(Global.Team1, "Squads1") + " / " + Rosters.get_lineup(Global.Team1, "Squads2") + " / " + Rosters.get_lineup(Global.Team1, "Squads3"))
	$"VBoxContainer/HBoxContainer6/ColorRect3/Team2 Squads".text = (Rosters.get_lineup(Global.Team2, "Squads1") + " / " + Rosters.get_lineup(Global.Team2, "Squads2") + " / " + Rosters.get_lineup(Global.Team2, "Squads3"))

	$"VBoxContainer/HBoxContainer/ColorRect2/Match Score".text = str(overallt1score) + "-" + str(overallt2score)
	$"VBoxContainer/HBoxContainer2/ColorRect2/Singles Score".text = "0-0"
	$"VBoxContainer/HBoxContainer3/ColorRect2/FS Score".text = "0-0"
	$"VBoxContainer/HBoxContainer4/ColorRect2/Stamina Score".text = "0-0"
	$"VBoxContainer/HBoxContainer5/ColorRect2/Doubles Score".text = "0-0"
	$"VBoxContainer/HBoxContainer6/ColorRect2/Squads Score".text = "0-0"
	
func match_score_labels(Event):
	if Event == "Singles":
		if Results.get_match_singles((MatchSim.matchrowsingles - 1), 0) == Global.Team1:
			$"VBoxContainer/HBoxContainer2/ColorRect2/Singles Score".text = str(Results.get_match_singles((MatchSim.matchrowsingles - 1), 4)) + "-" + str(Results.get_match_singles((MatchSim.matchrowsingles - 1), 5))
			$VBoxContainer/HBoxContainer2/ColorRect.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer2/ColorRect3.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_singles((MatchSim.matchrowsingles - 1), 4)
			overallt2score = overallt2score + Results.get_match_singles((MatchSim.matchrowsingles - 1), 5)
		if Results.get_match_singles((MatchSim.matchrowsingles - 1), 0) == Global.Team2:
			$"VBoxContainer/HBoxContainer2/ColorRect2/Singles Score".text = str(Results.get_match_singles((MatchSim.matchrowsingles - 1), 5)) + "-" + str(Results.get_match_singles((MatchSim.matchrowsingles - 1), 4))
			$VBoxContainer/HBoxContainer2/ColorRect3.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer2/ColorRect.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_singles((MatchSim.matchrowsingles - 1), 5)
			overallt2score = overallt2score + Results.get_match_singles((MatchSim.matchrowsingles - 1), 4)
		matchscoreflag = 0
	if Event == "Final Smash":
		if Results.get_match_fs((MatchSim.matchrowfs - 1), 0) == Global.Team1:
			$"VBoxContainer/HBoxContainer3/ColorRect2/FS Score".text = str(Results.get_match_fs((MatchSim.matchrowfs - 1), 4)) + "-" + str(Results.get_match_fs((MatchSim.matchrowfs - 1), 5))
			$VBoxContainer/HBoxContainer3/ColorRect.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer3/ColorRect3.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_fs((MatchSim.matchrowfs - 1), 4)
			overallt2score = overallt2score + Results.get_match_fs((MatchSim.matchrowfs - 1), 5)
		if Results.get_match_fs((MatchSim.matchrowfs - 1), 0) == Global.Team2:
			$"VBoxContainer/HBoxContainer3/ColorRect2/FS Score".text = str(Results.get_match_fs((MatchSim.matchrowfs - 1), 5)) + "-" + str(Results.get_match_fs((MatchSim.matchrowfs - 1), 4))
			$VBoxContainer/HBoxContainer3/ColorRect3.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer3/ColorRect.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_fs((MatchSim.matchrowfs - 1), 5)
			overallt2score = overallt2score + Results.get_match_fs((MatchSim.matchrowfs - 1), 4)
		matchscoreflag = 0
	if Event == "Stamina":
		if Results.get_match_stamina((MatchSim.matchrowstamina - 1), 0) == Global.Team1:
			$"VBoxContainer/HBoxContainer4/ColorRect2/Stamina Score".text = str(Results.get_match_stamina((MatchSim.matchrowstamina - 1), 4)) + "-" + str(Results.get_match_stamina((MatchSim.matchrowstamina - 1), 5))
			$VBoxContainer/HBoxContainer4/ColorRect.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer4/ColorRect3.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_stamina((MatchSim.matchrowstamina - 1), 4)
			overallt2score = overallt2score + Results.get_match_stamina((MatchSim.matchrowstamina - 1), 5)
		if Results.get_match_stamina((MatchSim.matchrowstamina - 1), 0) == Global.Team2:
			$"VBoxContainer/HBoxContainer4/ColorRect2/Stamina Score".text = str(Results.get_match_stamina((MatchSim.matchrowstamina - 1), 5)) + "-" + str(Results.get_match_stamina((MatchSim.matchrowstamina - 1), 4))
			$VBoxContainer/HBoxContainer4/ColorRect3.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer4/ColorRect.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_stamina((MatchSim.matchrowstamina - 1), 5)
			overallt2score = overallt2score + Results.get_match_stamina((MatchSim.matchrowstamina - 1), 4)
		matchscoreflag = 0
	if Event == "Doubles":
		if Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 0) == Global.Team1:
			$"VBoxContainer/HBoxContainer5/ColorRect2/Doubles Score".text = str(Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 6)) + "-" + str(Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 7))
			$VBoxContainer/HBoxContainer5/ColorRect.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer5/ColorRect3.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 6)
			overallt2score = overallt2score + Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 7)
		if Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 0) == Global.Team2:
			$"VBoxContainer/HBoxContainer5/ColorRect2/Doubles Score".text = str(Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 7)) + "-" + str(Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 6))
			$VBoxContainer/HBoxContainer5/ColorRect3.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer5/ColorRect.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 7)
			overallt2score = overallt2score + Results.get_match_doubles((MatchSim.matchrowdoubles - 1), 6)
		matchscoreflag = 0
	if Event == "Squads":
		if Results.get_match_squads((MatchSim.matchrowsquads - 1), 0) == Global.Team1:
			$"VBoxContainer/HBoxContainer6/ColorRect2/Squads Score".text = str(Results.get_match_squads((MatchSim.matchrowsquads - 1), 8)) + "-" + str(Results.get_match_squads((MatchSim.matchrowsquads - 1), 9))
			$VBoxContainer/HBoxContainer6/ColorRect.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer6/ColorRect3.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_squads((MatchSim.matchrowsquads - 1), 8)
			overallt2score = overallt2score + Results.get_match_squads((MatchSim.matchrowsquads - 1), 9)
		if Results.get_match_squads((MatchSim.matchrowsquads - 1), 0) == Global.Team2:
			$"VBoxContainer/HBoxContainer6/ColorRect2/Squads Score".text = str(Results.get_match_squads((MatchSim.matchrowsquads - 1), 9)) + "-" + str(Results.get_match_squads((MatchSim.matchrowsquads - 1), 8))
			$VBoxContainer/HBoxContainer6/ColorRect3.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer6/ColorRect.color = Color(.431, .075, .063, 1)
			overallt1score = overallt1score + Results.get_match_squads((MatchSim.matchrowsquads - 1), 9)
			overallt2score = overallt2score + Results.get_match_squads((MatchSim.matchrowsquads - 1), 8)
		if Results.get_match_total((MatchSim.matchrowtotal - 1), 0) == Global.Team1:
			$VBoxContainer/HBoxContainer/ColorRect.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer/ColorRect3.color = Color(.431, .075, .063, 1)
		if Results.get_match_total((MatchSim.matchrowtotal - 1), 0) == Global.Team2:
			$VBoxContainer/HBoxContainer/ColorRect3.color = Color(0, .525, .239, 1)
			$VBoxContainer/HBoxContainer/ColorRect.color = Color(.431, .075, .063, 1)
		matchscoreflag = 0

func _on_button_button_up():
	buttonprogress = (buttonprogress + 1)
	matchscoreflag = 1
