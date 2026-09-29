extends CharacterBody2D
@onready var anim: AnimatedSprite2D = $anim



const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("pulo1") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("esquerda1", "direita1")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	
	
	if position.y > 500:
		position.y = 0
		position.x = 0

	if !is_on_floor():
		anim.play("jump")
	elif is_on_floor() and velocity.x != 0:
		anim.play("run")
	else:
		anim.play("idle")
		
	move_and_slide()
