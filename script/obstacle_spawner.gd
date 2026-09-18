extends Marker2D

const OBSTACLE = preload("uid://bslrrkxu87f06")

@export var altura_minima: float = -150.0
@export var altura_maxima: float = 150.0

func _on_timer_timeout() -> void:
	var instance := OBSTACLE.instantiate()
	var altura_aleatoria = randf_range(altura_minima, altura_maxima)
	instance.position.y = altura_aleatoria
	add_child(instance)
