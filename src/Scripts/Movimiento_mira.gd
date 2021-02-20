extends Spatial

export(NodePath) onready var follow_node = get_node(follow_node) as PathFollow
export(NodePath) onready var tween_node = get_node(tween_node) as Tween
export(NodePath) onready var timer_node = get_node(timer_node) as Timer

func _ready():
	_mueve_mira()
	#pass


func _mueve_mira() -> void:
	yield(timer_node, "timeout")	
	tween_node.interpolate_property(follow_node, "unit_offset", 0.1, 0.9, 2.938, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	tween_node.start()
