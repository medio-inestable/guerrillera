extends AnimationPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	seek(0.8, true)
	playback_speed = rand_range(0.8, 1.5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	play()
	seek(0.8, true)
	playback_speed = rand_range(0.8, 1.5)
