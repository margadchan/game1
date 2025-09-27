extends CharacterBody2D

const SPEED = 100

func _physics_process(delta):
	player_movement(delta)
	move_and_slide()

func player_movement(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		velocity.y = 100
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		velocity.x = 0
	else:
		velocity = Vector2.ZERO
