extends Spatial
var cross = load("res://Assets/UI/target/chain_lock_cursor.png")
var cross_hover = load("res://Assets/UI/target/chain_lock_cursor_hover.png")

func _ready():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	Input.set_custom_mouse_cursor(cross_hover, Input.CURSOR_ARROW, Vector2(50,50))
	if event is InputEventMouseButton:
		#print(self)
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			$Canvas/fade/Tween.interpolate_property($Canvas/fade, "color", Color(0,0,0,0),Color(0,0,0,1), 2, Tween.TRANS_LINEAR, Tween.EASE_OUT)
			$Canvas/fade/Tween.start()
			yield(get_tree().create_timer(2), "timeout")
			get_tree().change_scene("res://Escenas/Escena_01_pantallas.tscn")


func _on_Area_mouse_exited():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
