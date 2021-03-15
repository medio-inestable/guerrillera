extends KinematicBody

var cross = load("res://Assets/UI/target/chain_lock_cursor.png")
var cross_hover = load("res://Assets/UI/target/chain_lock_cursor_hover.png")

onready var idle_01 = get_node("idle01") as Spatial
onready var idle_02 = get_node("idle02") as Spatial
onready var running = get_node('running') as Spatial
onready var scream = get_node('scream') as Spatial
onready var particles = get_node("Particles") as Particles
onready var particles2 = get_node("Particles2") as Particles
onready var particles3 = get_node("Particles3") as Particles
onready var particles4 = get_node("Particles4") as Particles
onready var particles5 = get_node("Particles5") as Particles
onready var area = get_node("Area") as Area
onready var luz = get_node("OmniLight") as SpotLight
var idle
var vivo:bool = true

export(bool) var corre_muxxxe = false
export(int) var pick_idle = 1
export(float) var velocidad = 1
var speed = global_transform.basis.x.normalized() * velocidad
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
	if corre_muxxxe:
		_corriendo(delta)

func _corriendo(_delta) -> void:
	velocity -= speed * _delta
	move_and_slide(velocity, Vector3.UP)


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	Input.set_custom_mouse_cursor(cross_hover, Input.CURSOR_ARROW, Vector2(50,50))
	if event is InputEventMouseButton:
		#print(self)
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			vivo = false
			GameEvents.emit_signal("objeto_disparado")
			particles.emitting = true
			particles2.emitting = true
			#particles3.emitting = true
			#particles4.emitting = true
			#particles5.emitting = true

			
			
			yield(get_tree().create_timer(0.3), "timeout")
			#luz.queue_free()
			#area.queue_free()
			idle.visible = false
			running.visible = false


func _on_Area_mouse_exited():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
