extends Spatial

export(float) var tiltilar_time
export(float) var energia

func _ready():
	_tiltilar()	
	pass


func _tiltilar():
	var tiltilar_rand = rand_range(tiltilar_time, tiltilar_time+0.3)
	self.visible = false
	yield(get_tree().create_timer(tiltilar_rand), "timeout")
	self.visible = true
	yield(get_tree().create_timer(tiltilar_rand), "timeout")
	_tiltilar()
	
