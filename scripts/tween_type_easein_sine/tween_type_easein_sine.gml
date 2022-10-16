function tween_type_easein_sine(_time, _start, _change, _duration)
{
	return -_change * cos(_time/_duration * (pi/2)) + _change + _start;
}