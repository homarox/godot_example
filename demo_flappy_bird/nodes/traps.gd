extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !Global.stopGame:
		self.position.x -= 60*delta    
	pass


func _on_top_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.die()
	pass # Replace with function body.


func _on_btn_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.die()
	pass # Replace with function body.


func _on_coin_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Global.score += 1
	pass # Replace with function body.


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	await get_tree().create_timer(2).timeout
	self.queue_free()
	pass # Replace with function body.
