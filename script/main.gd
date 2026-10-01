extends Node2D

signal game_started

var score = 0
var is_game_starded: bool = false

@onready var score_label: Label = $HUD/ScoreLabel
@onready var game_over_screen: Control = $HUD/GameOverScreen
@onready var tutorial: RichTextLabel = %Tutorial


func _ready() -> void:
	score_label.text = str(score)


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		if is_game_starded == false:
			is_game_starded = true
			game_started.emit()
			tutorial.hide()


func finish_game():
	EventBus.game_ended.emit()
	EventBus.scored.emit(score)
	game_over_screen.show()


func _on_screen_exited() -> void:
	finish_game()


func _on_obstacle_spawner_scored() -> void:
	score += 1
	score_label.text = str(score)


func _on_player_died() -> void:
	finish_game()
