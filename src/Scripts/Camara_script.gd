extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time = 0
var period = 0.05
var magnitude = 1.5
var magnitude_recoil = 30
var r_magitude_x
var r_magitude_y
var shoot = true

var cross = load("res://Assets/UI/crosshair_cursor.png")
var muzzlepng = load("res://Assets/UI/crosshair_invisible.png")



# Called when the node enters the scene tree for the first time.
func _ready():	
	pass
	
	

func _input(event):
	if event is InputEventMouseButton:
		#print(self.name)
		if event.button_index == BUTTON_LEFT and event.is_pressed() and $Camera.current and shoot:
			yield(get_tree().create_timer(0.03),"timeout")
			shoot = false
			r_magitude_y = rand_range(10,35)
			r_magitude_x = rand_range(-25, 25)
			$flash.visible = true
			_shake_camera()
			_recoil_cam(r_magitude_x, r_magitude_y)
			_muzzle(r_magitude_x, r_magitude_y)
			yield(get_tree().create_timer(0.3),"timeout")
			$flash.visible = false
			print('shaking')
			shoot = true
			pass


func _apaga_cam() -> void:
	$Camera.current = false
	$Camera.visible = false
	print('d')
	

func _prende_cam() -> void:
	$Camera.current = true
	$Camera.visible = true
	print('a')
	

func _muzzle(_r_magnitude_x: float, _r_magnitude_y: float):
	$gunshot.play()
	Input.set_custom_mouse_cursor(muzzlepng, Input.CURSOR_ARROW, Vector2(25,25))
	$AnimatedSprite.set_position(Vector2(get_viewport().get_mouse_position().x+(_r_magnitude_x*0.6),get_viewport().get_mouse_position().y-(_r_magnitude_y*0.9)))
	$AnimatedSprite.play('muzzle')	
	$gunshell.play('gun_shell')	
	yield(get_tree().create_timer(0.1),"timeout")
	$AnimatedSprite.set_frame(0)
	$gunshell.set_frame(0)
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(25,25))


func _shake_camera():
	var campos = $Camera.get_translation()
	
	
	while time < period:
		time += get_process_delta_time()
		time = min(time, period)
		
		#shake camera 
		var offset = Vector3()
		
		offset.x = rand_range(-magnitude, magnitude)
		offset.y = rand_range(-magnitude, magnitude)
		offset.z = 0
		
		var newcampos = campos
		
		newcampos += offset
		
		$Camera.set_translation(newcampos)		
		
		yield(get_tree().create_timer(0.08), "timeout")
		pass
	time = 0
	$Camera.set_translation(campos)	
	pass


func _recoil_cam(_r_magnitude_x: float, _r_magnitude_y: float):
	$Tween.interpolate_property($Camera, "rotation_degrees", Vector3(0,0,0), Vector3(_r_magnitude_y,_r_magnitude_x,0), 0.3, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
	$Tween.interpolate_property($Camera, "fov", 80, 85, 0.3, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
	get_viewport().warp_mouse(Vector2(get_viewport().get_mouse_position().x+(_r_magnitude_x*1.5),get_viewport().get_mouse_position().y-(_r_magnitude_y*1.3)))
	yield(get_tree().create_timer(0.2), "timeout")
	$Tween.interpolate_property($Camera, "rotation_degrees", Vector3(_r_magnitude_y,_r_magnitude_x,0), Vector3(0,0,0), 0.5, Tween.TRANS_ELASTIC, Tween.EASE_IN_OUT)
	$Tween.start()
	$Tween.interpolate_property($Camera, "fov", 85, 80, 0.5, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
