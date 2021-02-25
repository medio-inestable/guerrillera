extends Path


export(NodePath) onready var follow = get_node(follow) as PathFollow
export(NodePath) onready var tween_node = get_node(tween_node) as Tween
export(float) var tiempo

func _ready():
	_hoverear()


func _hoverear() -> void:
	tween_node.interpolate_property(follow, "unit_offset", 0.001, 0.999, tiempo, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	tween_node.start()
	yield(get_tree().create_timer(tiempo),"timeout")
	tween_node.interpolate_property(follow, "unit_offset", 0.999, 0.001, tiempo, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
	tween_node.start()
	yield(get_tree().create_timer(tiempo),"timeout")
	_hoverear()
	
	
