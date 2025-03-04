extends Node2D

var singlesstart
var finalsmashstart
var staminastart
var doubles1start
var doubles2start
var squads1start
var squads2start
var squads3start
var benchstart

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	set_lineup_buttons()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	singlesstart = %OptionButton.get_item_text(0)
	finalsmashstart = %OptionButton.get_item_text(1)
	staminastart = %OptionButton.get_item_text(2)
	doubles1start = %OptionButton.get_item_text(3)
	doubles2start = %OptionButton.get_item_text(4)
	squads1start = %OptionButton.get_item_text(5)
	squads2start = %OptionButton.get_item_text(6)
	squads3start = %OptionButton.get_item_text(7)
	benchstart = %OptionButton.get_item_text(8)
	
	if %OptionButton.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Singles", singlesstart)
	if %OptionButton.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Singles", finalsmashstart)
	if %OptionButton.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Singles", staminastart)
	if %OptionButton.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Singles", doubles1start)
	if %OptionButton.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Singles", doubles2start)
	if %OptionButton.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Singles", squads1start)
	if %OptionButton.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Singles", squads2start)
	if %OptionButton.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Singles", squads3start)
	if %OptionButton.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Singles", benchstart)
	
	if %OptionButton2.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Final Smash", singlesstart)
	if %OptionButton2.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Final Smash", finalsmashstart)
	if %OptionButton2.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Final Smash", staminastart)
	if %OptionButton2.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Final Smash", doubles1start)
	if %OptionButton2.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Final Smash", doubles2start)
	if %OptionButton2.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Final Smash", squads1start)
	if %OptionButton2.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Final Smash", squads2start)
	if %OptionButton2.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Final Smash", squads3start)
	if %OptionButton2.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Final Smash", benchstart)
	
	if %OptionButton3.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Stamina", singlesstart)
	if %OptionButton3.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Stamina", finalsmashstart)
	if %OptionButton3.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Stamina", staminastart)
	if %OptionButton3.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Stamina", doubles1start)
	if %OptionButton3.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Stamina", doubles2start)
	if %OptionButton3.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Stamina", squads1start)
	if %OptionButton3.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Stamina", squads2start)
	if %OptionButton3.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Stamina", squads3start)
	if %OptionButton3.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Stamina", benchstart)
	
	if %OptionButton4.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Doubles1", singlesstart)
	if %OptionButton4.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Doubles1", finalsmashstart)
	if %OptionButton4.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Doubles1", staminastart)
	if %OptionButton4.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Doubles1", doubles1start)
	if %OptionButton4.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Doubles1", doubles2start)
	if %OptionButton4.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Doubles1", squads1start)
	if %OptionButton4.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Doubles1", squads2start)
	if %OptionButton4.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Doubles1", squads3start)
	if %OptionButton4.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Doubles1", benchstart)
	
	if %OptionButton5.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Doubles2", singlesstart)
	if %OptionButton5.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Doubles2", finalsmashstart)
	if %OptionButton5.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Doubles2", staminastart)
	if %OptionButton5.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Doubles2", doubles1start)
	if %OptionButton5.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Doubles2", doubles2start)
	if %OptionButton5.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Doubles2", squads1start)
	if %OptionButton5.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Doubles2", squads2start)
	if %OptionButton5.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Doubles2", squads3start)
	if %OptionButton5.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Doubles2", benchstart)
	
	if %OptionButton6.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Squads1", singlesstart)
	if %OptionButton6.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Squads1", finalsmashstart)
	if %OptionButton6.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Squads1", staminastart)
	if %OptionButton6.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Squads1", doubles1start)
	if %OptionButton6.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Squads1", doubles2start)
	if %OptionButton6.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Squads1", squads1start)
	if %OptionButton6.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Squads1", squads2start)
	if %OptionButton6.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Squads1", squads3start)
	if %OptionButton6.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Squads1", benchstart)
	
	if %OptionButton7.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Squads2", singlesstart)
	if %OptionButton7.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Squads2", finalsmashstart)
	if %OptionButton7.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Squads2", staminastart)
	if %OptionButton7.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Squads2", doubles1start)
	if %OptionButton7.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Squads2", doubles2start)
	if %OptionButton7.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Squads2", squads1start)
	if %OptionButton7.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Squads2", squads2start)
	if %OptionButton7.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Squads2", squads3start)
	if %OptionButton7.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Squads2", benchstart)
	
	if %OptionButton8.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Squads3", singlesstart)
	if %OptionButton8.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Squads3", finalsmashstart)
	if %OptionButton8.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Squads3", staminastart)
	if %OptionButton8.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Squads3", doubles1start)
	if %OptionButton8.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Squads3", doubles2start)
	if %OptionButton8.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Squads3", squads1start)
	if %OptionButton8.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Squads3", squads2start)
	if %OptionButton8.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Squads3", squads3start)
	if %OptionButton8.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Squads3", benchstart)
	
	if %OptionButton9.get_selected_id() == 0:
		Rosters.set_lineup(Global.Team1, "Bench", singlesstart)
	if %OptionButton9.get_selected_id() == 1:
		Rosters.set_lineup(Global.Team1, "Bench", finalsmashstart)
	if %OptionButton9.get_selected_id() == 2:
		Rosters.set_lineup(Global.Team1, "Bench", staminastart)
	if %OptionButton9.get_selected_id() == 3:
		Rosters.set_lineup(Global.Team1, "Bench", doubles1start)
	if %OptionButton9.get_selected_id() == 4:
		Rosters.set_lineup(Global.Team1, "Bench", doubles2start)
	if %OptionButton9.get_selected_id() == 5:
		Rosters.set_lineup(Global.Team1, "Bench", squads1start)
	if %OptionButton9.get_selected_id() == 6:
		Rosters.set_lineup(Global.Team1, "Bench", squads2start)
	if %OptionButton9.get_selected_id() == 7:
		Rosters.set_lineup(Global.Team1, "Bench", squads3start)
	if %OptionButton9.get_selected_id() == 8:
		Rosters.set_lineup(Global.Team1, "Bench", benchstart)

func set_lineup_buttons():
	%OptionButton.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton2.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton2.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton2.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton2.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton2.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton2.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton2.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton2.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton2.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton3.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton3.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton3.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton3.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton3.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton3.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton3.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton3.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton3.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton4.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton4.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton4.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton4.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton4.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton4.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton4.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton4.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton4.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton5.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton5.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton5.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton5.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton5.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton5.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton5.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton5.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton5.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton6.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton6.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton6.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton6.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton6.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton6.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton6.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton6.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton6.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton7.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton7.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton7.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton7.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton7.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton7.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton7.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton7.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton7.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton8.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton8.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton8.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton8.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton8.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton8.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton8.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton8.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton8.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))
	
	%OptionButton9.set_item_text(0, Rosters.get_lineup(Global.Team1, "Singles"))
	%OptionButton9.set_item_text(1, Rosters.get_lineup(Global.Team1, "Final Smash"))
	%OptionButton9.set_item_text(2, Rosters.get_lineup(Global.Team1, "Stamina"))
	%OptionButton9.set_item_text(3, Rosters.get_lineup(Global.Team1, "Doubles1"))
	%OptionButton9.set_item_text(4, Rosters.get_lineup(Global.Team1, "Doubles2"))
	%OptionButton9.set_item_text(5, Rosters.get_lineup(Global.Team1, "Squads1"))
	%OptionButton9.set_item_text(6, Rosters.get_lineup(Global.Team1, "Squads2"))
	%OptionButton9.set_item_text(7, Rosters.get_lineup(Global.Team1, "Squads3"))
	%OptionButton9.set_item_text(8, Rosters.get_lineup(Global.Team1, "Bench"))

func _on_button_2_button_up() -> void:
	if (Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Final Smash")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Stamina")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Doubles1")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Doubles2")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Squads1")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Squads2")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Singles") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Stamina")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Doubles1")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Doubles2")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Squads1")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Squads2")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Final Smash") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Stamina") == Rosters.get_lineup(Global.Team1, "Doubles1")
	or Rosters.get_lineup(Global.Team1, "Stamina") == Rosters.get_lineup(Global.Team1, "Doubles2")
	or Rosters.get_lineup(Global.Team1, "Stamina") == Rosters.get_lineup(Global.Team1, "Squads1")
	or Rosters.get_lineup(Global.Team1, "Stamina") == Rosters.get_lineup(Global.Team1, "Squads2")
	or Rosters.get_lineup(Global.Team1, "Stamina") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Stamina") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Doubles1") == Rosters.get_lineup(Global.Team1, "Doubles2")
	or Rosters.get_lineup(Global.Team1, "Doubles1") == Rosters.get_lineup(Global.Team1, "Squads1")
	or Rosters.get_lineup(Global.Team1, "Doubles1") == Rosters.get_lineup(Global.Team1, "Squads2")
	or Rosters.get_lineup(Global.Team1, "Doubles1") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Doubles1") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Doubles2") == Rosters.get_lineup(Global.Team1, "Squads1")
	or Rosters.get_lineup(Global.Team1, "Doubles2") == Rosters.get_lineup(Global.Team1, "Squads2")
	or Rosters.get_lineup(Global.Team1, "Doubles2") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Doubles2") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Squads1") == Rosters.get_lineup(Global.Team1, "Squads2")
	or Rosters.get_lineup(Global.Team1, "Squads1") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Squads1") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Squads2") == Rosters.get_lineup(Global.Team1, "Squads3")
	or Rosters.get_lineup(Global.Team1, "Squads2") == Rosters.get_lineup(Global.Team1, "Bench")
	or Rosters.get_lineup(Global.Team1, "Squads3") == Rosters.get_lineup(Global.Team1, "Bench")):
		pass
	else:
		get_tree().change_scene_to_file("res://scenes/seasonhub.tscn")
