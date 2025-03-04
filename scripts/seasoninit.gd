extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.Team1 = "Default"
	Global.Team2 = "Default"

	$OptionButton.set_item_text(0, Schedule.get_team_name(1))
	$OptionButton.set_item_text(1, Schedule.get_team_name(2))
	$OptionButton.set_item_text(2, Schedule.get_team_name(3))
	$OptionButton.set_item_text(3, Schedule.get_team_name(4))
	$OptionButton.set_item_text(4, Schedule.get_team_name(5))
	$OptionButton.set_item_text(5, Schedule.get_team_name(6))
	$OptionButton.set_item_text(6, Schedule.get_team_name(7))
	$OptionButton.set_item_text(7, Schedule.get_team_name(8))
	$OptionButton.set_item_text(8, Schedule.get_team_name(9))
	$OptionButton.set_item_text(9, Schedule.get_team_name(10))
	$OptionButton.set_item_text(10, Schedule.get_team_name(11))
	$OptionButton.set_item_text(11, Schedule.get_team_name(12))
	$OptionButton.set_item_text(12, Schedule.get_team_name(13))
	$OptionButton.set_item_text(13, Schedule.get_team_name(14))
	$OptionButton.set_item_text(14, Schedule.get_team_name(15))
	$OptionButton.set_item_text(15, Schedule.get_team_name(16))
	$OptionButton.set_item_text(16, Schedule.get_team_name(17))
	$OptionButton.set_item_text(17, Schedule.get_team_name(18))
	$OptionButton.set_item_text(18, Schedule.get_team_name(19))
	$OptionButton.set_item_text(19, Schedule.get_team_name(20))
	$OptionButton.set_item_text(20, Schedule.get_team_name(21))
	$OptionButton.set_item_text(21, Schedule.get_team_name(22))
	$OptionButton.set_item_text(22, Schedule.get_team_name(23))
	$OptionButton.set_item_text(23, Schedule.get_team_name(24))
	$OptionButton.set_item_text(24, Schedule.get_team_name(25))
	$OptionButton.set_item_text(25, Schedule.get_team_name(26))
	$OptionButton.set_item_text(26, Schedule.get_team_name(27))
	$OptionButton.set_item_text(27, Schedule.get_team_name(28))
	$OptionButton.set_item_text(28, Schedule.get_team_name(29))
	$OptionButton.set_item_text(29, Schedule.get_team_name(30))
	$OptionButton.set_item_text(30, Schedule.get_team_name(31))
	$OptionButton.set_item_text(31, Schedule.get_team_name(32))
	$OptionButton.set_item_text(32, Schedule.get_team_name(33))
	$OptionButton.set_item_text(33, Schedule.get_team_name(34))
	$OptionButton.set_item_text(34, Schedule.get_team_name(35))
	$OptionButton.set_item_text(35, Schedule.get_team_name(36))
	$OptionButton.set_item_text(36, Schedule.get_team_name(37))
	$OptionButton.set_item_text(37, Schedule.get_team_name(38))
	$OptionButton.set_item_text(38, Schedule.get_team_name(39))
	$OptionButton.set_item_text(39, Schedule.get_team_name(40))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $OptionButton.get_selected_id() == 0:
		Global.Team1 = Schedule.get_team_name(1)
	if $OptionButton.get_selected_id() == 1:
		Global.Team1 = Schedule.get_team_name(2)
	if $OptionButton.get_selected_id() == 2:
		Global.Team1 = Schedule.get_team_name(3)
	if $OptionButton.get_selected_id() == 3:
		Global.Team1 = Schedule.get_team_name(4)
	if $OptionButton.get_selected_id() == 4:
		Global.Team1 = Schedule.get_team_name(5)
	if $OptionButton.get_selected_id() == 5:
		Global.Team1 = Schedule.get_team_name(6)
	if $OptionButton.get_selected_id() == 6:
		Global.Team1 = Schedule.get_team_name(7)
	if $OptionButton.get_selected_id() == 7:
		Global.Team1 = Schedule.get_team_name(8)
	if $OptionButton.get_selected_id() == 8:
		Global.Team1 = Schedule.get_team_name(9)
	if $OptionButton.get_selected_id() == 9:
		Global.Team1 = Schedule.get_team_name(10)
	if $OptionButton.get_selected_id() == 10:
		Global.Team1 = Schedule.get_team_name(11)
	if $OptionButton.get_selected_id() == 11:
		Global.Team1 = Schedule.get_team_name(12)
	if $OptionButton.get_selected_id() == 12:
		Global.Team1 = Schedule.get_team_name(13)
	if $OptionButton.get_selected_id() == 13:
		Global.Team1 = Schedule.get_team_name(14)
	if $OptionButton.get_selected_id() == 14:
		Global.Team1 = Schedule.get_team_name(15)
	if $OptionButton.get_selected_id() == 15:
		Global.Team1 = Schedule.get_team_name(16)
	if $OptionButton.get_selected_id() == 16:
		Global.Team1 = Schedule.get_team_name(17)
	if $OptionButton.get_selected_id() == 17:
		Global.Team1 = Schedule.get_team_name(18)
	if $OptionButton.get_selected_id() == 18:
		Global.Team1 = Schedule.get_team_name(19)
	if $OptionButton.get_selected_id() == 19:
		Global.Team1 = Schedule.get_team_name(20)
	if $OptionButton.get_selected_id() == 20:
		Global.Team1 = Schedule.get_team_name(21)
	if $OptionButton.get_selected_id() == 21:
		Global.Team1 = Schedule.get_team_name(22)
	if $OptionButton.get_selected_id() == 22:
		Global.Team1 = Schedule.get_team_name(23)
	if $OptionButton.get_selected_id() == 23:
		Global.Team1 = Schedule.get_team_name(24)
	if $OptionButton.get_selected_id() == 24:
		Global.Team1 = Schedule.get_team_name(25)
	if $OptionButton.get_selected_id() == 25:
		Global.Team1 = Schedule.get_team_name(26)
	if $OptionButton.get_selected_id() == 26:
		Global.Team1 = Schedule.get_team_name(27)
	if $OptionButton.get_selected_id() == 27:
		Global.Team1 = Schedule.get_team_name(28)
	if $OptionButton.get_selected_id() == 28:
		Global.Team1 = Schedule.get_team_name(29)
	if $OptionButton.get_selected_id() == 29:
		Global.Team1 = Schedule.get_team_name(30)
	if $OptionButton.get_selected_id() == 30:
		Global.Team1 = Schedule.get_team_name(31)
	if $OptionButton.get_selected_id() == 31:
		Global.Team1 = Schedule.get_team_name(32)
	if $OptionButton.get_selected_id() == 32:
		Global.Team1 = Schedule.get_team_name(33)
	if $OptionButton.get_selected_id() == 33:
		Global.Team1 = Schedule.get_team_name(34)
	if $OptionButton.get_selected_id() == 34:
		Global.Team1 = Schedule.get_team_name(35)
	if $OptionButton.get_selected_id() == 35:
		Global.Team1 = Schedule.get_team_name(36)
	if $OptionButton.get_selected_id() == 36:
		Global.Team1 = Schedule.get_team_name(37)
	if $OptionButton.get_selected_id() == 37:
		Global.Team1 = Schedule.get_team_name(38)
	if $OptionButton.get_selected_id() == 38:
		Global.Team1 = Schedule.get_team_name(39)
	if $OptionButton.get_selected_id() == 39:
		Global.Team1 = Schedule.get_team_name(40)

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
