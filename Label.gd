extends Label


# Called when the node enters the scene tree for the first time.
var energy
func _ready():
	energy.connect(get_parent().get_node("player").getE()))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = "Energy: %s" % energy
