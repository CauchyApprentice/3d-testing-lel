extends PathFollow3D

var speed


func _ready() -> void:
	speed = $enemy.speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	if progress_ratio >= 1 or progress_ratio <= 0:
		speed *= -1
	progress += speed * delta
