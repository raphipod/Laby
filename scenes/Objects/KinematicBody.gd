extends KinematicBody

var speed = 200
var direction = Vector3()
var gravity = -9.8
var velocity = Vector3()

func _ready():
	pass
	
func _physics_process(delta):
	direction = Vector3(0, 0, 0)
	if Input.is_action_pressed("lft"):
		direction.z += 2
	if Input.is_action_pressed("rgt"):
		direction.z -= 2
	if Input.is_action_pressed("fwd"):
		direction.x -= 2
	if Input.is_action_pressed("bwd"):
		direction.x += 2
	direction = direction.normalized()
	direction = direction * speed * delta
	
	velocity.y += gravity * delta
	velocity.x = direction.x
	velocity.z = direction.z
	
	velocity = move_and_slide(velocity, Vector3(0, 1, 0))
		
	
		
