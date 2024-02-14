extends StaticBody2D

const SPEED = 500.0

@onready var screen_size: Vector2 = get_viewport_rect().size


func _process(delta: float) -> void:
	var velocity: Vector2 = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	if Input.is_action_pressed('ui_down'):
		velocity.y = 1
		
	position += velocity * SPEED * delta
	position = position.clamp(Vector2.ZERO, screen_size)
