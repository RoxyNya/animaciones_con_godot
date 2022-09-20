extends KinematicBody2D

var motion = Vector2(0,0)
var velocidad=500
var arriba=Vector2(0,-1)
var gravedad=0


func _physics_process(delta):
	
	motion = Vector2(0,0)
	
	if Input.is_action_pressed("ui_right"):
		motion.x=100
	if Input.is_action_pressed("ui_left"):
		motion.x=-100
	if Input.is_action_pressed("ui_up"):
		motion.y=-100
	if Input.is_action_pressed("ui_down"):
		motion.y=100
		
	motion = move_and_slide(motion)
