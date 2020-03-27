extends KinematicBody2D

export var speed = 0
export var gravity = 0
var motion = Vector2()
var is_dead = false
var GRAVITY = false


func ready():
	set_physics_process(true)

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		motion.y -= speed
	elif Input.is_action_pressed("ui_down"):
		motion.y += speed
	else:
		motion.y = 0
	motion = move_and_slide(motion)
	
	
	if Input.is_action_pressed("ui_left"):
		motion.x -= speed
	elif Input.is_action_pressed("ui_right"):
		motion.x += speed
	else:
		motion.x = 0
	motion = move_and_slide(motion)
	
func dead():
# warning-ignore:standalone_expression
	is_dead == true
	motion = Vector2(0,0)
	$CollisionShape2D.disabled = true
	if is_dead == true:
		GRAVITY = true
		GRAVITY = 12
	
