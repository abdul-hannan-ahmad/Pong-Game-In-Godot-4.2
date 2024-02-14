extends CanvasLayer

var player_points: int = 0
var enemy_points: int = 0


func _process(_delta: float) -> void:
	$"Player Label".text = str(player_points)
	$"Enemy Label".text = str(enemy_points)
