extends Area2D

# class member variables go here, for example:

enum stat{
	STR,DEF,HP,MP,SPD,CHARGE,ATTACK_SPEED,INT
}

export(stat) var statType 
export var statPower = 1
var tween
var sprite

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	tween = $Tween 
	sprite = $Sprite
	pick_up()
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	
	
	pass

func pick_up():
	tween.interpolate_property(self,"position",position,position+Vector2(0,-100),2.5,Tween.TRANS_CIRC,Tween.EASE_OUT,1)
	tween.interpolate_property(sprite,"modulate",Color(1,1,1,1),Color(1,1,1,0),0.8,Tween.TRANS_CIRC,Tween.EASE_OUT,1)
	tween.interpolate_property(sprite,"scale",Vector2(1,1),Vector2(0,1),0.5,Tween.TRANS_CIRC,Tween.EASE_OUT,1)
	#tween.a
	tween.start()
	
	pass

func _on_Pickup_body_entered( body ):
	pick_up()
	pass # replace with function body
