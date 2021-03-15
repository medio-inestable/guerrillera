extends Spatial

var cross = load("res://Assets/UI/target/chain_lock_cursor.png")
var cross_hover = load("res://Assets/UI/target/chain_lock_cursor_hover.png")

onready var pain = get_node("pain")
onready var perreo = get_node("perreo")
onready var walk = get_node("walk")
var anim_actual
var disparable = true
var perrea = true
var camina = false

func _ready():
	pass
	

func _process(delta):
	if perrea:
		anim_actual = perreo
		anim_actual.visible = true
		perrea = false
	elif camina:
		anim_actual = walk
		anim_actual.visible = true
		camina = false

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	Input.set_custom_mouse_cursor(cross_hover, Input.CURSOR_ARROW, Vector2(50,50))
	if disparable:
		if event is InputEventMouseButton:
			#print(self)
			if event.button_index == BUTTON_LEFT and event.pressed == true:
				GameEvents.emit_signal("objeto_disparado")
				anim_actual.visible = false
				pain.visible = true
				pain._on_hit()
				disparable = false
				yield(get_tree().create_timer(1), "timeout")
				anim_actual.visible = true
				pain.visible = false
				disparable = true
				


func _on_Area_mouse_exited():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(50,50))
