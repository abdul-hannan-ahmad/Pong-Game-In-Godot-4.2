extends CharacterBody2D

var x_range: Array = [-400, 400]


func _ready() -> void:
	set_velocity(Vector2(x_range[randi() % x_range.size()], 350))
	
	
func _physics_process(delta: float) -> void:
		
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
