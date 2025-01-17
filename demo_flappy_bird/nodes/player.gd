extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var isLive = true

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and isLive:
		velocity.y = JUMP_VELOCITY

	move_and_slide()

func die():
	isLive = false
	Global.stopGame = true
