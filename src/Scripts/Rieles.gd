extends Spatial

export(Array) var riel_paths = []
export(Array) var follow_paths = []
export(Array) var camera_paths = []
export(Array) var tiempo_tweens = []
onready var cam = get_node("Camara")

# Called when the node enters the scene tree for the first time.
func _ready():
	_activa_camera(camera_paths[0], camera_paths)
	#_asigna_camera(follow_paths[0], ".", cam)
	get_node(riel_paths[0])._mueve_camara(tiempo_tweens[0], Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)


func _asigna_camera(follow_path, _parent, _cam):	
	get_node(_parent).remove_child(_cam)	
	get_node(follow_path).add_child(_cam)
	

func _activa_camera(camera_path: NodePath, cameras: Array):
	get_node(camera_path)._prende_cam()
	for cam in cameras:
		if cam != camera_path:
			get_node(cam)._apaga_cam()

func _on_tween_01_01_tween_completed(object, key):
	_activa_camera(camera_paths[1], camera_paths)
	#_asigna_camera(follow_paths[1], follow_paths[0], cam)
	get_node(riel_paths[1])._mueve_camara(tiempo_tweens[1], Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
