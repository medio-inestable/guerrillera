extends Spatial

var pantallas
var rota = -0.001

func _ready():
	pantallas = get_children()	
	pass

func _process(delta):
	
	for pantalla in pantallas:		
		pantalla.look_at(Vector3(0,0,0), Vector3(0,1,0))
	rotate_y(rota)
