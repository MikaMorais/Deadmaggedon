extends Area2D

const SPEED = 350
var velocity = Vector2()
var direction = 1


func _ready():
	$AnimatedSprite.play("shoot")
	
func set_fireball_direction(dir):
	direction = dir
	if dir == -1:
		$AnimatedSprite.flip_h = true

func _physics_process(delta):
	velocity.x = SPEED * delta * direction #shooting horizontally
	translate(velocity)
	
	
	
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Fireball_body_entered(body):
	queue_free()
