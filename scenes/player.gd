extends CharacterBody2D

@export var speed: int = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var xStartPosition = get_viewport().size.x / 2
	var yStartPosition = get_viewport().size.y - 100
	position = Vector2(xStartPosition, yStartPosition)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
