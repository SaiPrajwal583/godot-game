extends Node

@onready var bgm = $AudioStreamPlayer

func _ready():
	# Start with zero volume
	bgm.volume_db = -40
	bgm.play()
	fade_in_bgm()

func fade_in_bgm():
	var tween = get_tree().create_tween()
	tween.tween_property(bgm, "volume_db", 0, 2.0) # fade to full volume over 2 sec
