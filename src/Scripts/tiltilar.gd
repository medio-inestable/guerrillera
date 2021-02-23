extends SpotLight

export(float) var tiltilar_time
export(float) var energia

func _ready():
	_tiltilar()	
	pass


func _tiltilar():
	light_energy = energia
	yield(get_tree().create_timer(tiltilar_time), "timeout")
	light_energy = 0	
	_tiltilar()
	
