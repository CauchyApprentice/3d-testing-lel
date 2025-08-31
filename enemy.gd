extends CharacterBody3D


var patrol_speed: float = 1.2
var chase_speed: float = 4.5
var sight_radius: float = 15
var search_ray: RayCast3D


func _ready() -> void:
	search_ray = $RayCast3D

func _physics_process(_delta: float) -> void:
	
	search_ray.target_position = position + Vector3(0,0,-1) * sight_radius
