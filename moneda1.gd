extends Area2D




func _on_moneda_2_body_shape_entered(body_id, body, body_shape, area_shape):
	queue_free()
