extends Spatial
var cross = load("res://Assets/UI/target/chain_lock_cursor.png")
var cross_hover = load("res://Assets/UI/target/chain_lock_cursor_hover.png")


var queue = preload("res://Scripts/resource_queue.gd").new()
var cambia_escena = false


func _ready():
	queue.start()
	queue.queue_resource("res://Escenas/Escena_01_pantallas.tscn", true)
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
	pass


func _process(delta):
	if cambia_escena:
		if queue.is_ready("res://Escenas/Escena_01_pantallas.tscn"):
			$Canvas/fade.mouse_filter = Control.MOUSE_FILTER_IGNORE
			get_tree().change_scene("res://Escenas/Escena_01_pantallas.tscn")
			cambia_escena = false
		else:
			#print('cargAAAAAAAAAAAA')
			pass
	

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	Input.set_custom_mouse_cursor(cross_hover, Input.CURSOR_ARROW, Vector2(50,50))
	if event is InputEventMouseButton:
		#print(self)
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			$Canvas/fade/Tween.interpolate_property($Canvas/fade, "color", Color(0,0,0,0),Color(0,0,0,1), 2, Tween.TRANS_LINEAR, Tween.EASE_OUT)
			$Canvas/fade/Tween.start()
			$Canvas/fade.mouse_filter = Control.MOUSE_FILTER_STOP
			yield(get_tree().create_timer(2), "timeout")
			cambia_escena = true
				


func _on_Area_mouse_exited():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
