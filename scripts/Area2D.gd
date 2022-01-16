extends Area2D

var currentPos
onready var player = get_node("/root/Combat/Player")
onready var control = get_node("/root/Combat/Control")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		if control.moveAllowed == true:
			currentPos = self.position
			player.position.x = self.position.x
			player.position.y = self.position.y
			control.moveAllowed = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
