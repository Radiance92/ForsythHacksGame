extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
@onready var _animated_sprite = $Area2D/AnimatedSprite2D
func _on_area_2d_body_entered(body):
	print(body.get_groups());
	if body.is_in_group("player"):
		body.energy += 50
		_animated_sprite.play("collect")
