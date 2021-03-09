extends KinematicBody

onready var idle_01 = get_node("idle01") as Spatial
onready var idle_02 = get_node("idle02") as Spatial
onready var running = get_node('running') as Spatial
onready var scream = get_node('scream') as Spatial
var idle

export(bool) var corre_muxxxe = false
export(int) var pick_idle = 1
var speed = Vector3.FORWARD * 10
var velocity = Vector3.ZERO

func _ready():
	if pick_idle == 1:
		idle = idle_01
		idle.visible = true
		idle_02.queue_free()
		
	elif pick_idle == 2:
		idle = idle_02
		idle_02.visible = true
		idle_01.queue_free()	
	
	if corre_muxxxe:
		idle.visible = false
		running.visible = true
	pass

func _process(delta):
	_corriendo(delta)

func _corriendo(_delta) -> void:
	velocity += speed * _delta
	velocity = move_and_slide(velocity, Vector3.UP)
