extends Spatial

var cross = load("res://Assets/UI/target/chain_lock_cursor.png")
var cross_hover = load("res://Assets/UI/target/chain_lock_cursor_hover.png")


func _ready():
	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	Input.set_custom_mouse_cursor(cross_hover, Input.CURSOR_ARROW, Vector2(50,50))
	if event is InputEventMouseButton:
		#print(self)
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			GameEvents.emit_signal("objeto_disparado")
			$TV_01.visible = false
			$TV_01_Rota.rotation.x = rand_range(-0.25,0.25)*PI
			#$TV_01_Rota.rotation.y = 180
			$TV_01_Rota.rotation.z = rand_range(-0.25,0.25)*PI
			$TV_01_Rota.visible = true


func _on_Area_mouse_exited():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
