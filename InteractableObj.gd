extends RigidBody2D
#@onready var collision_shape = $CollisionShape2D
var interactable = false


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if (body != self): #can add player to group player and check if node entered is a player if this causes issues
		$AnimatedSprite2D.show()
		interactable = true


func _on_area_2d_body_exited(body):
	if (body != self): #can add player to group player and check if node entered is a player if this causes issues
		$AnimatedSprite2D.hide()
		interactable = false
