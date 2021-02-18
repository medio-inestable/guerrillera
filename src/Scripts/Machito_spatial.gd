extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_area_shape_entered(area_id, area, area_shape, self_shape):
	_animacion_offset()
	

func _animacion_offset():
	var offset = 0
	
	while offset < 0.99:
		yield(get_tree().create_timer(0.01), "timeout")
		offset += 0.02
		print(offset)
		$Path2/PathFollow.unit_offset = offset
	



