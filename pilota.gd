extends RigidBody2D
var punts1=0
var punts2=0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#func _process(delta):
#	if CollisionShape2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass







func _on_porteria_player_1_body_entered(body):
	if body.name=='pilota':
		Globalvar.punts2+=1
		get_tree().reload_current_scene()


func _on_porteria_player_2_body_entered(body):
	if body.name=='pilota':
		Globalvar.punts1+=1
		get_tree().reload_current_scene()


func _on_comptador_player_1_renamed():
	pass # Replace with function body.


func _on_comptador_player_2_renamed():
	pass # Replace with function body.
