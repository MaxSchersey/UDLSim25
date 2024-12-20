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
	
	if $OptionButton2.get_selected_id() == 0:
		Global.Team2 = "Arizona Almighty"
	if $OptionButton2.get_selected_id() == 1:
		Global.Team2 = "Snake Oli Merchants"
	if $OptionButton2.get_selected_id() == 2:
		Global.Team2 = "6:16 in Seattle"
	if $OptionButton2.get_selected_id() == 3:
		Global.Team2 = "Baba Keke Jiji and Fofo"
	if $OptionButton2.get_selected_id() == 4:
		Global.Team2 = "Hardcore Parkour"
	if $OptionButton2.get_selected_id() == 5:
		Global.Team2 = "Meet n' Falc Kingdom"
	if $OptionButton2.get_selected_id() == 6:
		Global.Team2 = "BIG PLACEHOLDER"
	if $OptionButton2.get_selected_id() == 7:
		Global.Team2 = "Dream Big, Fart Loud"
	if $OptionButton2.get_selected_id() == 8:
		Global.Team2 = "Pokeymons"
	if $OptionButton2.get_selected_id() == 9:
		Global.Team2 = "Coffin Fitters"
	if $OptionButton2.get_selected_id() == 10:
		Global.Team2 = "In the Flow State"
	if $OptionButton2.get_selected_id() == 11:
		Global.Team2 = "Brendini's Genies"
	if $OptionButton2.get_selected_id() == 12:
		Global.Team2 = "NPC Adventure Rescue Squad"
	if $OptionButton2.get_selected_id() == 13:
		Global.Team2 = "Stardenburdenhardenbart"
	if $OptionButton2.get_selected_id() == 14:
		Global.Team2 = "BlazeBallin: Peak Fiction"
	if $OptionButton2.get_selected_id() == 15:
		Global.Team2 = "Da Frizzadonkeys"
	if $OptionButton2.get_selected_id() == 16:
		Global.Team2 = "On Mah Son"
	if $OptionButton2.get_selected_id() == 17:
		Global.Team2 = "The Ballin' Association"
	if $OptionButton2.get_selected_id() == 18:
		Global.Team2 = "The Bone Rattlers"
	if $OptionButton2.get_selected_id() == 19:
		Global.Team2 = "Based Opinions"
	if $OptionButton2.get_selected_id() == 20:
		Global.Team2 = "Saturday Morning Cartoons"
	if $OptionButton2.get_selected_id() == 21:
		Global.Team2 = "Taskmasters III"
	if $OptionButton2.get_selected_id() == 22:
		Global.Team2 = "Goku's Katnisses"
	if $OptionButton2.get_selected_id() == 23:
		Global.Team2 = "Over-Day Out Death"
	if $OptionButton2.get_selected_id() == 24:
		Global.Team2 = "DondoIt"
	if $OptionButton2.get_selected_id() == 25:
		Global.Team2 = "The Logical Endpoint of Man's Hubris"
	if $OptionButton2.get_selected_id() == 26:
		Global.Team2 = "Toilet Crusaders"
	if $OptionButton2.get_selected_id() == 27:
		Global.Team2 = "The Marios"
	if $OptionButton2.get_selected_id() == 28:
		Global.Team2 = "Wagwan University"
	if $OptionButton2.get_selected_id() == 29:
		Global.Team2 = "Orange You Glad"
	if $OptionButton2.get_selected_id() == 30:
		Global.Team2 = "Modified Memories"
	if $OptionButton2.get_selected_id() == 31:
		Global.Team2 = "Mike's Money Makers"
	if $OptionButton2.get_selected_id() == 32:
		Global.Team2 = "Trickle Down-Smash Economics"
	if $OptionButton2.get_selected_id() == 33:
		Global.Team2 = "Nine Lives in Ninjutsu"
	if $OptionButton2.get_selected_id() == 34:
		Global.Team2 = "Mom Doers"
	if $OptionButton2.get_selected_id() == 35:
		Global.Team2 = "Suomi Blimp Squadron"
	if $OptionButton2.get_selected_id() == 36:
		Global.Team2 = "A Maglev into the Inner Machinations of God"
	if $OptionButton2.get_selected_id() == 37:
		Global.Team2 = "Smeten"
	if $OptionButton2.get_selected_id() == 38:
		Global.Team2 = "Filidutter"
	if $OptionButton2.get_selected_id() == 39:
		Global.Team2 = "The Sheikah Shadows"


func _on_button_button_up():
	if Global.Team1 == "Default" or Global.Team2 == "Default":
		pass
	else:
		MatchSim.setup_match(Global.Team1, Global.Team2)
		Global.IsQuickplay = 1
		get_tree().change_scene_to_file("res://scenes/matchdisplay.tscn")


func _on_button_2_button_up():
	Global.Team1 = "Default"
	Global.Team2 = "Default"
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
