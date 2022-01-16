extends Area2D


var combat = preload("res://scripts/Combat.gd")

onready var player = get_node("/root/Combat/Player")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		print("Clicked")
		print(player.position)
		print(self.position)
		player.position == Vector2(0,0)
		print(player.position)
		print(self.position)
		#combat.currentTile=1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
