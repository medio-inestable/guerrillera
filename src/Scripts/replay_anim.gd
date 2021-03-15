extends AnimationPlayer

export(NodePath) onready var animacion = get_node(animacion) as AnimationPlayer

func _ready():
	pass




func _on_AnimationPlayer_animation_finished(anim_name):
	play()
