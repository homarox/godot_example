extends Node2D

var pipeNode = preload("res://nodes/traps.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$ParallaxBackground.scroll_offset.x -= 10*delta
	$CanvasLayer/Control/Score.text = str(Global.score)
	pass


func _on_timer_timeout() -> void:
	var newPipe = pipeNode.instantiate()
	newPipe.position.x = get_viewport_rect().end.x
	var heighPipe = get_viewport_rect().size.y/2
	newPipe.position.y = randf_range(heighPipe* 0.15, heighPipe*0.65)
	add_child(newPipe)
	pass # Replace with function body.
