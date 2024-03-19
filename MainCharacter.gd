extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#on transition to main scene we will attach chosen appropriate sprite chosen from character creation
	#along with their stats/class
	global_position = Vector2(0.0, 0.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	linear_velocity = Vector2(0,0);
	if(Input.is_action_pressed("ui_down")):
		linear_velocity.y = 100;
	if(Input.is_action_pressed("ui_up")):
		linear_velocity.y = -100;
	if(Input.is_action_pressed("ui_left")):
		linear_velocity.x = -100;
	if(Input.is_action_pressed("ui_right")):
		linear_velocity.x = 100;
