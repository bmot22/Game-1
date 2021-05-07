extends KinematicBody
var accelaracio:Vector2=Vector2(3,5)
export var velocitat_max=400
var contadormonedas=0
var velocitat := Vector2(0,0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	velocitat=Vector2.ZERO
	velocitat.x= 0
	velocitat.x=Input.get_action_strength("dreta2")-Input.get_action_strength("esquerra2")
	velocitat.y=Input.get_action_strength("baixa2")-Input.get_action_strength("adalt2")
	velocitat=velocitat.normalized()*velocitat_max


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
