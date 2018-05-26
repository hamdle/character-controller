extends "res://characters/character.gd"

signal direction_changed

func _physics_process(delta):
	input_direction = Vector2()
	
	# 4 directions
	if Input.is_action_pressed('move_up'):
		input_direction.y = -1
	elif Input.is_action_pressed('move_down'):
		input_direction.y = 1
	elif Input.is_action_pressed('move_right'):
		input_direction.x = 1
	elif Input.is_action_pressed('move_left'):
		input_direction.x = -1

	max_speed = MAX_RUN_SPEED if Input.is_action_pressed("run") else MAX_WALK_SPEED