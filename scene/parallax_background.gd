extends ParallaxBackground

func _ready() -> void:
	set_process(false)
	EventBus.game_ended.connect(_on_game_ended)

func _process(delta):
	scroll_offset.x -= 300    * delta

func _on_game_ended() -> void:
	set_process(false)


func _on_main_game_started() -> void:
	set_process(true)
