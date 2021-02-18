extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(NodePath) var pathfollow
export(float) var time_tween

# Called when the node enters the scene tree for the first time.
func _ready():
	pathfollow = get_node(pathfollow)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_area_e_01_area_entered(area):
	$Tween.interpolate_property(pathfollow, 'unit_offset', 0, 0.99, time_tween, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()
