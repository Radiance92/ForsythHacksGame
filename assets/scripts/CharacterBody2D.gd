extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
<<<<<<< HEAD
var energy = 100
signal energyvalue

=======
var charge = 0
func _ready():
	pass
>>>>>>> dd1bb5bb62d42b1bc5778dd080d8bbb16066322b
func _physics_process(delta):
	energy -= delta
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = (
						-1 if Input.is_action_pressed("move_left")
						else 1 if Input.is_action_pressed("move_right")
						else 0
					)
	velocity.x = direction * SPEED
	if energy == 0:
		get_tree().change_scene_to_file("win")
		
	

	
	

	move_and_slide()
# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 0.5 seconds.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)

@onready var _animated_sprite = $AnimatedSprite2D

func _getE():
	return energy

func _process(_delta):
	if Input.is_action_pressed("move_right"):
		_animated_sprite.play("walkright")
	elif Input.is_action_pressed("move_left"):
		_animated_sprite.play("walkleft")
	else:
		_animated_sprite.stop()
