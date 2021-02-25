extends Path

export(NodePath) var pathFnode 
export(NodePath) var tweenNode 
export(NodePath) var camNode 
export(int) var camNumero 
export(float) var segundos


var pathF
var cam
var tween_node
var offsetCam = 0


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pathF = get_node(pathFnode)
	cam = get_node(camNode)
	tween_node = get_node(tweenNode)
	_mueve_camara(segundos, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
	#_mueve_camara(_segundos, _tween_s, _tween_e)
	#if camNumero == 1:
		#$follow_01_01/Camara.curre
		#_mueve_camara(10.0)
		#tween_node.interpolate_property(pathF, 'unit_offset', 0, 1, 20, Tween.TRANS_CUBIC, Tween.EASE_IN)
		#tween_node.start()


func _mueve_camara(_segundos: float, _tween_s, _tween_e) -> void:	
	tween_node.interpolate_property(pathF, 'unit_offset', 0.001, 0.999, _segundos, _tween_s, _tween_e)
	tween_node.start()
	yield(get_tree().create_timer(_segundos),"timeout")
	tween_node.interpolate_property(pathF, 'unit_offset', 0.999, 0.001, _segundos, _tween_s, _tween_e)
	tween_node.start()
	yield(get_tree().create_timer(_segundos),"timeout")
	_mueve_camara(_segundos, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
	#if pathF.unit_offset<0.75:
		#pathF.unit_offset += 0.001
	#	print(pathF.unit_offset)
	#elif pathF.unit_offset>0.75:
		#pathF.unit_offset += 0.0001
	#	print(pathF.unit_offset)
	
	#offsetCam = ((get_viewport().get_mouse_position().x/get_viewport().size.x)-0.5)*(0.3*2)
	#cam.rotation.y = offsetCam + 180
	#print(offsetCam)	
	#print(get_viewport().get_mouse_position().x)


