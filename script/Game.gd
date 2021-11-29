extends Node2D


var life = 3
var score = 0

func _ready():
	
	$HUD/life.text = "" + str(life)
	$HUD/score.text = "" + str(score)
	$BackgroundSound.play()
	

func count_life():
	life -= 1
	$HUD/life.text = "" + str(life)
	$HurtSound.play()
	
	if(life == 0):
		$Player.dead()
		
func gain_life():
	life += 1
	$HUD/life.text = "" + str(life)
	$HeartSound.play()
		
func count_score():
	score += 1
	$HUD/score.text = "" + str(score)
	$CoinSound.play()
	
	if(score == 5):
		get_tree().change_scene(("res://scenes/Win.tscn"))
	

func _on_Fallzone_body_entered(body):
	$HurtSound.play()
	get_tree().change_scene("res://scenes/GameOver.tscn")	
