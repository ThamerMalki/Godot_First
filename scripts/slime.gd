extends Node2D

const SPEED = 30
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_down_left = $RayCastDownLeft
@onready var ray_cast_down_right = $RayCastDownRight

var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding():
		direction =1
		animated_sprite_2d.flip_h =false
		
	if ray_cast_right.is_colliding():
		animated_sprite_2d.flip_h =true
		direction = -1
		
	if !ray_cast_down_left.is_colliding():
		direction =1
		animated_sprite_2d.flip_h =false
		 
	if !ray_cast_down_right.is_colliding():
		direction =-1
		animated_sprite_2d.flip_h =true
		
	position.x += SPEED * direction * delta
