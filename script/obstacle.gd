class_name Obstacle
extends StaticBody2D
@onready var score_sound: AudioStreamPlayer2D = $ScoreSound

signal scored

func _physics_process(delta: float) -> void:
	position.x += -200 * delta


func _on_score_area_body_entered(body: Node2D) -> void:
	scored.emit()
	score_sound.play()
