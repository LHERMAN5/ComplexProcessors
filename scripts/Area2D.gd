extends Area2D

var currentPos
onready var player = get_node("/root/Combat/Player")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		print("Clicked")
		print(self.position)
		currentPos = self.position
		player.position.x = self.position.x
		player.position.y = self.position.y
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
