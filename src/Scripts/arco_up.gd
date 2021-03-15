extends Spatial
onready var puerta = get_node(".")

func _ready():
	pass


func _sube_puerta() -> void:
	$Tween.interpolate_property(puerta,'translation', Vector3(23.686, 0, -0.163), Vector3(23.686, 1.45, -0.163), 2, Tween.TRANS_SINE, Tween.EASE_IN)
	$Tween.start()	
	
