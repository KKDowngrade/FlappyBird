extends Marker2D

const OBSTACLE = preload("uid://bslrrkxu87f06")



func _on_timer_timeout() -> void:
	var instance := OBSTACLE.instantiate()
	add_child(instance)
