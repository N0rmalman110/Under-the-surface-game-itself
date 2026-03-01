extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_shop_pressed() -> void:
	pass
	#get_node("shop").visibility = true


var x: int = 0

func _on_fish_pressed() -> void:
	x = x+1
	
	get_node("fishnum").text = str(x)
	
	get_node("Sitting3").visible = not get_node("Sitting3").visible
	get_node("G3").visible = not get_node("G3").visible
	await get_tree().create_timer(0.4).timeout
	get_node("Sitting3").visible = not get_node("Sitting3").visible
	get_node("G3").visible = not get_node("G3").visible
	
	
	get_node("Sitting7").visible = not get_node("Sitting7").visible
	get_node("G7").visible = not get_node("G7").visible
	await get_tree().create_timer(0.4).timeout
	get_node("Sitting7").visible = not get_node("Sitting7").visible
	get_node("G7").visible = not get_node("G7").visible
	
	


func _on_auto_pressed() -> void:
	
	x=x-50
	await get_tree().create_timer(1.0).timeout 
	_on_fish_pressed()
	x=x+17
	
