extends Node2D


var game
var isDead

func _ready():
	game = get_tree().current_scene
	isDead = false


func _on_Damage_body_entered(body):
	if !(isDead):
		if(body.name == "Player"):
			game.count_life()
			$HurtSound.play()


func _on_Death_body_entered(body):
	if(body.name == "Player"):
		$AnimatedSprite.animation = "dead"
		isDead = true
		


func _on_AnimatedSprite_animation_finished():
	if($AnimatedSprite.animation == "dead"):
		queue_free()
