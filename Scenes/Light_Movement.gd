extends DirectionalLight

var Speed = 125.0 #The speed at which the Light Source in this case meaning the Sun is travelling to the designated Vector
var point = Vector3(10, 10, 0) #The place where Sun is traveling too

func _process(delta): #This part of the code was meant to mkae the sun travel to the specified Vector and slow down the movement to minimise jitter when close to the destination.
	var direction
	
	if point.distance_to(transform.origin) > 0.05:
		direction = point - transform.origin
		direction = direction.normalized() * Speed
	else:
		direction = point - transform.origin
	#print(transform)
		
