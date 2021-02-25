extends Spatial

var pantallas
export(float) var rota_ini
export(float) var rota_fin
var rota

func _ready():
	rota = rota_ini
	pantallas = get_children()	
	yield(get_tree().create_timer(5), "timeout")
	rota = rota_fin
	pass

func _process(delta):
	
	for pantalla in pantallas:		
		pantalla.look_at(Vector3(0,0,0), Vector3(0,1,0))
	rotate_y(rota)
