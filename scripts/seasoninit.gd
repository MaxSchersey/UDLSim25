extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.Team1 = "Default"
	Global.Team2 = "Default"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $OptionButton.get_selected_id() == 0:
		Global.Team1 = "Arizona Almighty"
	if $OptionButton.get_selected_id() == 1:
		Global.Team1 = "Snake Oli Merchants"
	if $OptionButton.get_selected_id() == 2:
		Global.Team1 = "6:16 in Seattle"
	if $OptionButton.get_selected_id() == 3:
		Global.Team1 = "Baba Keke Jiji and Fofo"
	if $OptionButton.get_selected_id() == 4:
		Global.Team1 = "Hardcore Parkour"
	if $OptionButton.get_selected_id() == 5:
		Global.Team1 = "Meet n' Falc Kingdom"
	if $OptionButton.get_selected_id() == 6:
		Global.Team1 = "BIG PLACEHOLDER"
	if $OptionButton.get_selected_id() == 7:
		Global.Team1 = "Dream Big, Fart Loud"
	if $OptionButton.get_selected_id() == 8:
		Global.Team1 = "Pokeymons"
	if $OptionButton.get_selected_id() == 9:
		Global.Team1 = "Coffin Fitters"
	if $OptionButton.get_selected_id() == 10:
		Global.Team1 = "In the Flow State"
	if $OptionButton.get_selected_id() == 11:
		Global.Team1 = "Brendini's Genies"
	if $OptionButton.get_selected_id() == 12:
		Global.Team1 = "NPC Adventure Rescue Squad"
	if $OptionButton.get_selected_id() == 13:
		Global.Team1 = "Stardenburdenhardenbart"
	if $OptionButton.get_selected_id() == 14:
		Global.Team1 = "BlazeBallin: Peak Fiction"
	if $OptionButton.get_selected_id() == 15:
		Global.Team1 = "Da Frizzadonkeys"
	if $OptionButton.get_selected_id() == 16:
		Global.Team1 = "On Mah Son"
	if $OptionButton.get_selected_id() == 17:
		Global.Team1 = "The Ballin' Association"
	if $OptionButton.get_selected_id() == 18:
		Global.Team1 = "The Bone Rattlers"
	if $OptionButton.get_selected_id() == 19:
		Global.Team1 = "Based Opinions"
	if $OptionButton.get_selected_id() == 20:
		Global.Team1 = "Saturday Morning Cartoons"
	if $OptionButton.get_selected_id() == 21:
		Global.Team1 = "Taskmasters III"
	if $OptionButton.get_selected_id() == 22:
		Global.Team1 = "Goku's Katnisses"
	if $OptionButton.get_selected_id() == 23:
		Global.Team1 = "Over-Day Out Death"
	if $OptionButton.get_selected_id() == 24:
		Global.Team1 = "DondoIt"
	if $OptionButton.get_selected_id() == 25:
		Global.Team1 = "The Logical Endpoint of Man's Hubris"
	if $OptionButton.get_selected_id() == 26:
		Global.Team1 = "Toilet Crusaders"
	if $OptionButton.get_selected_id() == 27:
		Global.Team1 = "The Marios"
	if $OptionButton.get_selected_id() == 28:
		Global.Team1 = "Wagwan University"
	if $OptionButton.get_selected_id() == 29:
		Global.Team1 = "Orange You Glad"
	if $OptionButton.get_selected_id() == 30:
		Global.Team1 = "Modified Memories"
	if $OptionButton.get_selected_id() == 31:
		Global.Team1 = "Mike's Money Makers"
	if $OptionButton.get_selected_id() == 32:
		Global.Team1 = "Trickle Down-Smash Economics"
	if $OptionButton.get_selected_id() == 33:
		Global.Team1 = "Nine Lives in Ninjutsu"
	if $OptionButton.get_selected_id() == 34:
		Global.Team1 = "Mom Doers"
	if $OptionButton.get_selected_id() == 35:
		Global.Team1 = "Suomi Blimp Squadron"
	if $OptionButton.get_selected_id() == 36:
		Global.Team1 = "A Maglev into the Inner Machinations of God"
	if $OptionButton.get_selected_id() == 37:
		Global.Team1 = "Smeten"
	if $OptionButton.get_selected_id() == 38:
		Global.Team1 = "Filidutter"
	if $OptionButton.get_selected_id() == 39:
		Global.Team1 = "The Sheikah Shadows"

func _on_button_button_up():
	if Global.Team1 == "Default":
		pass
	else:
		#Transition to season mode scene
		Schedule.init_season_schedule()
		Standings.reset_standings()
		Standings.division_update()
		Standings.wild_card_update()
		Global.IsQuickplay = 0
		Global.SeasonWeek = 1
		MatchSim.matchrowsingles = 0
		MatchSim.matchrowfs = 0
		MatchSim.matchrowstamina = 0
		MatchSim.matchrowdoubles = 0
		MatchSim.matchrowsquads = 0
		MatchSim.matchrowtotal = 0
		get_tree().change_scene_to_file("res://scenes/seasonhub.tscn")


func _on_button_2_button_up():
	Global.Team1 = "Default"
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
