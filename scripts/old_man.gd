extends CharacterBody2D

const SPEED = 200
const JUMP_SPEED = -600

func _physics_process(delta: float) -> void:

	if not is_on_floor():
		velocity = velocity + get_gravity() * delta

	if Input.is_action_pressed("izqda"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("der"):
		velocity.x = SPEED
	else:
		velocity.x = 0
		
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_SPEED
	
	move_and_slide()
