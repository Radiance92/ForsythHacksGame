extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Aread2D_body_entered(body):
	print("test")
	if body.get_name() == "player":
		body.add_coins(1)
		queue_free()
