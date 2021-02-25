extends Spatial


func _ready():
	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		#print(self)
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			$fade/Tween.interpolate_property($fade, "color", Color(0,0,0,0),Color(0,0,0,1), 2, Tween.TRANS_LINEAR, Tween.EASE_OUT)
			$fade/Tween.start()
			yield(get_tree().create_timer(2), "timeout")
			get_tree().change_scene("res://Escenas/Escena_01_pantallas.tscn")
