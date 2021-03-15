extends Spatial

onready var fadeout = $fadeout
onready var fadeout_tween = $fadeout/Tween

func _ready():
	pass


func _fade_loop():
	fadeout_tween.interpolate_property(fadeout, 'color', Color(0,0,0,0), Color(0,0,0,1), 1, Tween.TRANS_LINEAR, Tween.EASE_IN)
	fadeout_tween.start()


func _on_Guerrillera_finished():
	_fade_loop()
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Escenas/Escena_00_menu.tscn")
