extends Control

var moveAllowed = false

func _on_ItemList_item_selected(index):
	if index == 0:
		moveAllowed = true
	else:
		moveAllowed = false
		
