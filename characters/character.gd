extends KinematicBody2D

var input_direction = Vector2()

const MAX_WALK_SPEED = 450
const MAX_RUN_SPEED = 700

var speed = 0
var max_speed = 0

var motion = Vector2()

func _physics_process(delta):
	if input_direction:
		if speed != max_speed:
			speed = max_speed
	else:
		speed = 0

	var velocity = input_direction.normalized() * speed
	move_and_slide(velocity, Vector2(), 5, 2)