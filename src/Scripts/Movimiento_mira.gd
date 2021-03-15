extends Spatial

export(NodePath) onready var follow_node = get_node(follow_node) as PathFollow
export(NodePath) onready var tween_node = get_node(tween_node) as Tween
export(float) var tiempo_tween

func _ready():
	#_mueve_mira()
	pass


func _mueve_mira() -> void:	
	tween_node.interpolate_property(follow_node, "unit_offset", 0.01, 0.99, tiempo_tween, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	tween_node.start()
	
func _ultima_mira() -> void:
	tween_node.interpolate_property(follow_node, "unit_offset", 0.001, 0.999, tiempo_tween, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	tween_node.start()
	yield(get_tree().create_timer(tiempo_tween), "timeout")
	_ultima_mira()
