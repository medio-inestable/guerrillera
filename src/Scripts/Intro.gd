extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.set_window_maximized(true)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_tree().change_scene("res://Escenas/Escena_00_menu.tscn")
	pass


func _on_TimerStart_timeout():
	$ColorRect/Tween.interpolate_property($ColorRect, 'color', Color(0,0,0,0), Color(0,0,0,1), 5, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$ColorRect/Tween.start()
