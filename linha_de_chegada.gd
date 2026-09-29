extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player1":
		print("Player 1 venceu!")
		body.position.y = 0
		body.position.x = 0
		
	elif body.name == "player2":
		print("Player 2 venceu!")
		body.position.y = 0
		body.position.x = 0
	
