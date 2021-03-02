extends Spatial

export(Array, NodePath) var riel_paths = []
export(Array, NodePath) var follow_paths = []
export(Array, NodePath) var camera_paths = []
export(Array, float) var tiempo_tweens = []
export(NodePath) onready var main_muxxxe = get_node(main_muxxxe) as Spatial
#onready var cam = get_node("Camara")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	#OS.set_window_maximized(true)
	_activa_camera(camera_paths[0], camera_paths)
	#_asigna_camera(follow_paths[0], ".", cam)
	get_node(riel_paths[0])._mueve_camara(tiempo_tweens[0], Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)


func _asigna_camera(follow_path, _parent, _cam):	
	get_node(_parent).remove_child(_cam)	
	get_node(follow_path).add_child(_cam)
	

func _activa_camera(camera_path: NodePath, cameras: Array):
	for cam in cameras:
		if cam != camera_path:
			get_node(cam)._apaga_cam()
	
	get_node(camera_path)._prende_cam()
			
			
			
			
#TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED 
#TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED 
#TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED 
#TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED 
#TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED TWEEN COMPLETED 



func _on_Tween_00_intro_tween_completed(object, key):
	_activa_camera(camera_paths[1], camera_paths)	
	get_node(riel_paths[1])._mueve_camara(tiempo_tweens[1], Tween.TRANS_CUBIC, Tween.EASE_OUT)
	

func _on_Tween_01_intro_tween_completed(object, key):
	get_node("Riel_02_intro/Riel_Mira_02_intro")._mueve_mira()
	_activa_camera(camera_paths[2], camera_paths)	
	get_node(riel_paths[2])._mueve_camara(tiempo_tweens[2], Tween.TRANS_LINEAR, Tween.EASE_OUT)


func _on_Tween_02_intro_tween_completed(object, key):
	yield(get_tree().create_timer(0.5),"timeout")
	_activa_camera(camera_paths[3], camera_paths)	
	get_node(riel_paths[3])._mueve_camara(tiempo_tweens[3], Tween.TRANS_LINEAR, Tween.EASE_OUT)


func _on_Tween_03_intro_tween_completed(object, key):
	_activa_camera(camera_paths[4], camera_paths)	
	get_node(riel_paths[4])._mueve_camara(tiempo_tweens[4], Tween.TRANS_LINEAR, Tween.EASE_OUT)
	
	
func _on_Tween_04_intro_tween_completed(object, key):
	_activa_camera(camera_paths[5], camera_paths)	
	get_node(riel_paths[5])._mueve_camara(tiempo_tweens[5], Tween.TRANS_LINEAR, Tween.EASE_OUT)
	
	
func _on_Tween_05_intro_tween_completed(object, key):
	_activa_camera(camera_paths[6], camera_paths)	
	get_node(riel_paths[6])._mueve_camara(tiempo_tweens[6], Tween.TRANS_LINEAR, Tween.EASE_OUT)


func _on_Tween_06_intro_tween_completed(object, key):
	#yield(get_tree().create_timer(0.2),"timeout")
	_activa_camera(camera_paths[7], camera_paths)	
	get_node(riel_paths[7])._mueve_camara(tiempo_tweens[7], Tween.TRANS_LINEAR, Tween.EASE_OUT)
	

func _on_Tween_07_intro_tween_completed(object, key):
	_activa_camera(camera_paths[8], camera_paths)	
	get_node(riel_paths[8])._mueve_camara(tiempo_tweens[8], Tween.TRANS_LINEAR, Tween.EASE_OUT)


func _on_Tween_08_intro_tween_completed(object, key):
	_activa_camera(camera_paths[9], camera_paths)	
	get_node(riel_paths[9])._mueve_camara(tiempo_tweens[9], Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)


func _on_Tween_09_intro_tween_completed(object, key):
	main_muxxxe.visible = false
	get_node("Riel_10_intro/Riel_Mira_10_intro")._mueve_mira()
	_activa_camera(camera_paths[10], camera_paths)	
	get_node(riel_paths[10])._mueve_camara(tiempo_tweens[10], Tween.TRANS_LINEAR, Tween.EASE_OUT)
	

func _on_Tween_10_intro_tween_completed(object, key):
	get_node("Riel_11_intro/Riel_Mira_11_intro")._mueve_mira()
	_activa_camera(camera_paths[11], camera_paths)	
	get_node(riel_paths[11])._mueve_camara(tiempo_tweens[11], Tween.TRANS_LINEAR, Tween.EASE_OUT)
	

func _on_Tween_11_intro_tween_completed(object, key):
	_activa_camera(camera_paths[12], camera_paths)	
	get_node(riel_paths[12])._mueve_camara(tiempo_tweens[12], Tween.TRANS_LINEAR, Tween.EASE_OUT)


func _on_Tween_12_intro_tween_completed(object, key):
	_activa_camera(camera_paths[13], camera_paths)	
	get_node(riel_paths[13])._mueve_camara(tiempo_tweens[13], Tween.TRANS_LINEAR, Tween.EASE_OUT)
	
	
func _on_Tween_13_intro_tween_completed(object, key):
	get_node("Riel_14_tunel/Riel_Mira_14_tunel")._mueve_mira()
	_activa_camera(camera_paths[14], camera_paths)	
	get_node(riel_paths[14])._mueve_camara(tiempo_tweens[14], Tween.TRANS_LINEAR, Tween.EASE_OUT)

	
func _on_tween_01_01_tween_completed(object, key):
	_activa_camera(camera_paths[1], camera_paths)	
	get_node(riel_paths[1])._mueve_camara(tiempo_tweens[1], Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)





