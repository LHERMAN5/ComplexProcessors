extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var area2d = preload("res://scripts/Area2D.gd")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(area2d.currentPos)
	#position = area.currentPos
#	pass
