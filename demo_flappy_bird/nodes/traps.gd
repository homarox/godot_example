extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.x -= 60*delta    
	pass


func _on_top_area_body_entered(body: Node2D) -> void:
	print("top: " + body.name)
	pass # Replace with function body.


func _on_btn_area_body_entered(body: Node2D) -> void:
	print("btn: " + body.name)
	pass # Replace with function body.
