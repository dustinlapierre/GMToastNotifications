function tween_type_linear(_time, _start, _change, _duration)
{
	return (_change * _time/_duration + _start);
}