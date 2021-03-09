extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat := Vector2(100,0)
var acceleracio : Vector2 = Vector2(3,5)
var velocitat_max = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat = Vector2.ZERO
	if Input.is_action_pressed('move_left'):
		flip_h = true
	velocitat.x = Input.get_action_strength('move_right') - Input.get_action_strength('move_left')
	velocitat.y = Input.get_action_strength('move_down') - Input.get_action_strength('move_up')
	#if Input.is_action_pressed(('jump')):
		#velocitat += Vector2(0,-100)
		#velocitat += Vector2(0,100)
	velocitat = velocitat.normalized() * velocitat_max
	position += velocitat * delta
	$"red yoshi ".rotation_degrees += 90 * delta

