extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat := Vector2(100,0)
var acceleracio : Vector2 = Vector2(3,5)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta


func _on_Sprite_texture_changed():
	pass # Replace with function body.
