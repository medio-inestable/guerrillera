extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cross = load("res://Assets/UI/crosshair_cursor.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(cross, Input.CURSOR_ARROW, Vector2(25,25))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_boton_inicio_pressed():
	get_tree().change_scene("res://Escenas/Main_riel.tscn")
