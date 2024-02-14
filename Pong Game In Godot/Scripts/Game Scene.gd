extends Node2D


func spawn_ball():
	var new_ball = preload("res://Scenes/Ball.tscn").instantiate()
	new_ball.global_position = $BallSpawn.global_position
	add_child(new_ball)


func _on_enemy_point_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("ball"):
		body.queue_free()
		$"UI Manager".enemy_points += 1
		await $Timer.timeout
		spawn_ball()


func _on_player_point_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("ball"):
		$"UI Manager".player_points += 1
		await $Timer.timeout
		spawn_ball()
