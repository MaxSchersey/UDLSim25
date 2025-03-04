extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("LMB"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	if Input.is_action_pressed("RMB") and Global.SeasonWeek < 17:
		Global.SeasonWeek = Global.SeasonWeek + 1
		get_tree().change_scene_to_file("res://scenes/seasonhub.tscn")
