extends KinematicBody2D


const MOVE_SPEED = 20
var move_direction = 0

const JUMP_FORCE = 1100
const GRAVITY = 50
const MAX_FALL_SPEED = 500

var y_velocity = 0

func _physics_process(delta): # functions in FPS
	
		var grounded = is_on_floor()
		var on_floor = $RayR.is_colliding() or $RayL.is_colliding()
		
		if Input.is_action_pressed("exit"):
			get_tree().quit()
		
		if Input.is_action_pressed("right"):
			$Sprite.animation = "walk"
			$Sprite.flip_h = false
			move_direction += 1
		
		elif Input.is_action_pressed("left"):
			$Sprite.animation = "walk"
			$Sprite.flip_h = true
			move_direction -= 1
			
		else:
			$Sprite.animation = "idle"
			move_direction = 0
			
		if grounded and Input.is_action_just_pressed("jump"):
			y_velocity = -JUMP_FORCE
			$Sprite.animation = "jump"
		
		move_and_slide(Vector2(move_direction * MOVE_SPEED, y_velocity), Vector2(0, -1))
		
		y_velocity += GRAVITY
		
		if grounded and y_velocity >= 0:
			y_velocity = 5
		
		if y_velocity > MAX_FALL_SPEED:
			y_velocity = MAX_FALL_SPEED
