extends Spatial


func _ready():
	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		#print(self)
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			$TV_02.visible = false
			$TV_02_Rota.rotation.x = rand_range(-0.25,0.25)*PI
			#$TV_02_Rota.rotation.y = 180
			$TV_02_Rota.rotation.z = rand_range(-0.25,0.25)*PI
			$TV_02_Rota.visible = true
