extends Node2D

var puntaje = 0
var score = 0
func _ready():
	
	GameEvents.connect("objeto_disparado", self, "_on_objeto_disparado")


func _on_objeto_disparado() -> void:
	puntaje = puntaje + 1
	$adn.speed_scale = puntaje + 1
	score = floor(score + (rand_range(1349, 5633) * puntaje)) 
	$texto_puntos.text = str('x',str(puntaje))
	$texto_puntaje.text = str('SCORE: ',str(score))
	$Timer_puntos.start()
	
	#$Timer_circulos.start()
	#$letra_c_01/Tween.interpolate_property($letra_c_01, 'scale', Vector2(0,0), Vector2(0.32, 0.32), 0.6, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	#$letra_c_01/Tween.start()
	#$letra_c_02/Tween.interpolate_property($letra_c_02, 'scale', Vector2(0,0), Vector2(0.35, 0.35), 0.5, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	#$letra_c_02/Tween.start()
	
	if puntaje > 0 && puntaje < 4:
		$D/Tween.interpolate_property($D, 'scale', Vector2(0,0), Vector2(0.6, 0.6), 0.8, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
		$D/Tween.start()
		yield(get_tree().create_timer(0.8), "timeout")
		$D/Tween.interpolate_property($D, 'scale', Vector2(0.6,0.6), Vector2(0, 0), $Timer_puntos.wait_time - 0.8, Tween.TRANS_CUBIC,Tween.EASE_IN)
		$D/Tween.start()
		
	elif puntaje > 3 && puntaje < 7:
		$C/Tween.interpolate_property($C, 'scale', Vector2(0,0), Vector2(0.6, 0.6), 0.8, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
		$C/Tween.start()
		yield(get_tree().create_timer(0.8), "timeout")
		$C/Tween.interpolate_property($C, 'scale', Vector2(0.6,0.6), Vector2(0, 0), $Timer_puntos.wait_time - 0.8, Tween.TRANS_CUBIC,Tween.EASE_IN)
		$C/Tween.start()
	elif puntaje > 6 && puntaje < 10:
		$B/Tween.interpolate_property($B, 'scale', Vector2(0,0), Vector2(0.6, 0.6), 0.8, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
		$B/Tween.start()
		yield(get_tree().create_timer(0.8), "timeout")
		$B/Tween.interpolate_property($B, 'scale', Vector2(0.6,0.6), Vector2(0, 0), $Timer_puntos.wait_time - 0.8, Tween.TRANS_CUBIC,Tween.EASE_IN)
		$B/Tween.start()
	elif puntaje > 9 && puntaje < 14:
		$A/Tween.interpolate_property($A, 'scale', Vector2(0,0), Vector2(0.6, 0.6), 0.8, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
		$A/Tween.start()
		yield(get_tree().create_timer(0.8), "timeout")
		$A/Tween.interpolate_property($A, 'scale', Vector2(0.6,0.6), Vector2(0, 0), $Timer_puntos.wait_time - 0.8, Tween.TRANS_CUBIC,Tween.EASE_IN)
		$A/Tween.start()
	elif puntaje > 13:
		$S/Tween.interpolate_property($S, 'scale', Vector2(0,0), Vector2(0.6, 0.6), 0.8, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
		$S/Tween.start()
		yield(get_tree().create_timer(0.8), "timeout")
		$S/Tween.interpolate_property($S, 'scale', Vector2(0.6,0.6), Vector2(0, 0), $Timer_puntos.wait_time - 0.8, Tween.TRANS_CUBIC,Tween.EASE_IN)
		$S/Tween.start()
		


func _on_Timer_puntos_timeout():
	puntaje = 0
	$texto_puntos.text = ''
	$adn.speed_scale = 1


func _on_Timer_circulos_timeout():
	pass
	#$letra_c_01/Tween.interpolate_property($letra_c_01, 'scale', Vector2(0.32,0.32), Vector2(0, 0), $Timer_puntos.wait_time - $Timer_circulos.wait_time, Tween.TRANS_CUBIC,Tween.EASE_OUT)
	#$letra_c_01/Tween.start()
	#$letra_c_02/Tween.interpolate_property($letra_c_02, 'scale', Vector2(0.35,0.35), Vector2(0, 0), $Timer_puntos.wait_time - $Timer_circulos.wait_time, Tween.TRANS_CUBIC,Tween.EASE_OUT)
	#$letra_c_02/Tween.start()
