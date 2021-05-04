extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var velocitat := Vector2(100,0)
var acceleracio : Vector2 = Vector2(3,5)
var contadormonedas = 0
export var velocitat_max = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat.x = 380
	velocitat.y += 950*delta
	if Input.is_action_just_pressed("puja1") and is_on_floor():
			velocitat.y = -430
	elif is_on_floor():
		pass
	velocitat = move_and_slide(velocitat, Vector2.UP)


func _on_clau_area_body_entered(body):
	get_tree().reload_current_scene()

func mor():
	queue_free()
