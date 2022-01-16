extends Control

var moveAllowed = false
var windup = false
var damage = 15

onready var enemyHealth = get_node("/root/Combat/Enemy/EnemyHealth")
var healthScript = preload("res://HealthBar.gd")
#var gameLoop = preload("res://scenes/GameLoop.gd")

func applyDamageOnEnemy(damage):
	#healthScript.health_under = 50
	pass
	
	

func _on_ItemList_item_selected(index):
	if true: #gameLoop.playerTurn:
		if index == 0:
			moveAllowed = true
		else:
			moveAllowed = false
		
		if index == 1:
			windup = true
		
		if index == 2:
			if windup == true:
				damage = 45
			else:
				damage = 15
			applyDamageOnEnemy(damage)
		#gameLoop.playerTurn = false
