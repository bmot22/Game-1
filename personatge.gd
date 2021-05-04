extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var velocitat := Vector2(100,0)
var acceleracio : Vector2 = Vector2(3,5)
export var velocitat_max = 300
onready var textura_original = $alien.texture
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat.x = 350
	velocitat.y += 950*delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
			velocitat.y = -430
			$alien.texture = load("res://platformer-art-complete-pack-0/Base pack/Player/p1_hurt.png")

	elif is_on_floor():
		$alien.texture = textura_original
	velocitat = move_and_slide(velocitat, Vector2.UP)

func _on_gates_body_entered(body):
	get_tree().reload_current_scene()
