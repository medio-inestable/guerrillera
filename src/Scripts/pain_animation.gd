extends Spatial

export(NodePath) onready var animation = get_node(animation) as AnimationPlayer

func _ready():
	animation.set_assigned_animation('ArmaturemixamocomLayer0002')
	#animation.get_animation('ArmaturemixamocomLayer0002').length = 0.9
	animation.seek(0.6, true)
	


func _on_hit() -> void:
	#animation.get_animation('ArmaturemixamocomLayer0002').length = 0.9
	animation.play()
	animation.seek(0.6, true)
	#animation.playback_speed = rand_range(0.8, 1.5)
