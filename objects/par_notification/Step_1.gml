//tick lifetime
lifetime--;

//animate opacity
if(lifetime == 0)
	tween("opacity", 0, 60);
if(lifetime < 0 && opacity <= 0)
	instance_destroy();