extends Spatial

export(Array, NodePath) var riel_paths = []
export(Array, NodePath) var follow_paths = []
export(Array, NodePath) var camera_paths = []
export(Array, float) var tiempo_tweens = []
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



func _on_Tween_00_menu_tween_completed(object, key):
	_activa_camera(camera_paths[1], camera_paths)	
	get_node(riel_paths[1])._mueve_camara(tiempo_tweens[1], Tween.TRANS_CUBIC, Tween.EASE_OUT)
