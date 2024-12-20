extends Node

var Team1
var Team2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $OptionButton.get_selected_id() == 0:
		Team1 = "Arizona Almighty"
	if $OptionButton.get_selected_id() == 1:
		Team1 = "Snake Oli Merchants"
	if $OptionButton2.get_selected_id() == 0:
		Team2 = "Arizona Almighty"
	if $OptionButton2.get_selected_id() == 1:
		Team2 = "Snake Oli Merchants"
	
	pass


func _on_button_button_up():
	MatchSim.setup_match(Team1, Team2)


func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://main_menu.tscn")
