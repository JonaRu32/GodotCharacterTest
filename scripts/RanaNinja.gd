extends CharacterBody2D

const SPEED = 130
const JUMP_SPEED = -300
const MAX_JUMPS = 3
var jumps = 0
@onready var sprite = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity = velocity + get_gravity() * delta

	if Input.is_action_pressed("izqda"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("der"):
		velocity.x = SPEED
	else:
		velocity.x = 0
		
	if velocity.x != 0:
		sprite.flip_h = velocity.x < 0
		
	if is_on_floor():
		jumps = 0
		
	if jumps < MAX_JUMPS and Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_SPEED
		jumps += 1
		
	
	move_and_slide()
	update_animation() 


func update_animation() -> void:
	if is_on_floor():
		if velocity.x == 0:
			sprite.play("idle")
		else:
			sprite.play("run")
	else:
		if velocity.y < 0:
			if jumps > 1:
				sprite.play("double_jump")
			else:
				sprite.play("jump")
		else:
			sprite.play("fall")
