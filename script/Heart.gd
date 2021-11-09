extends Area2D

var game

func _ready():
	game = get_tree().current_scene

func _on_Heart_body_entered(body):
	
	if(body.name == "Player"):
		queue_free()
		game.gain_life()
