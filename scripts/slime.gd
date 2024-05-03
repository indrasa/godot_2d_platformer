extends Node2D

@onready var left = $left
@onready var right = $right
@onready var animated_sprite = $AnimatedSprite2D


const SPEED = 30
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	
	position.x +=  direction * SPEED * delta
