extends Area2D

var game

func _ready():
	game = get_tree().current_scene

func _on_Item_body_entered(body):
	
	if(body.name == "Player"):
		queue_free() #"dissapear" the item, showing the effect of collection of the coins
		game.count_score()
