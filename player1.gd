extends KinematicBody2D
var velocitat := Vector2(0,0)
var accelaracio:Vector2=Vector2(3,5)
export var velocitat_max=400

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	velocitat=Vector2.ZERO
	velocitat.x= 0
	velocitat.x=Input.get_action_strength("dreta1")-Input.get_action_strength("esquerra1")
	velocitat.y=Input.get_action_strength("baixa1")-Input.get_action_strength("puja1")
	velocitat=velocitat.normalized()*velocitat_max

	velocitat= move_and_slide(velocitat, Vector2.UP)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

 # Replace with function body.
