function tween_type_easeout_sine(_time, _start, _change, _duration)
{
	return _change * sin(_time/_duration * (pi/2)) + _start;
}