extends Node2D

onready var tile1 = get_node("/root/Combat/Area2D/Space1")
onready var tile2 = get_node("/root/Combat/Area2D2/Space2")
onready var tile3 = get_node("/root/Combat/Area2D3/Space3")
onready var tile4 = get_node("/root/Combat/Area2D4/Space4")
onready var tile5 = get_node("/root/Combat/Area2D5/Space5")
onready var tile6 = get_node("/root/Combat/Area2D6/Space6")
onready var tile7 = get_node("/root/Combat/Area2D7/Space7")
onready var tile8 = get_node("/root/Combat/Area2D8/Space8")

func boss_windup(difficulty):
	
	var tiles = [tile1,tile2,tile3,tile4,tile5,tile6,tile7,tile8]
	var attacked_tiles = []
	var no_of_tiles = difficulty
	
	for i in range(0,no_of_tiles):
		randomize()
		var choice = tiles[randi() % tiles.size()] 
		attacked_tiles.append(choice)
		tiles.erase(choice)
	
	flash(attacked_tiles)
	yield(get_tree().create_timer(1.0), "timeout")
	flash(attacked_tiles)

func flash(tiles):
	for tile in tiles:
		tile.modulate =  Color( 255, 255, 255, 255 )
		
	yield(get_tree().create_timer(1.0), "timeout")
	
	for tile in tiles:
		tile.modulate =  Color( 0, 255, 255, 255 )

	
	
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	boss_windup(3) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
