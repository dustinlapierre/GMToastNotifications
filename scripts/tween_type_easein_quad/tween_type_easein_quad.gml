function tween_type_easein_quad(_time, _start, _change, _duration)
{
	_time /= _duration;
	return (_change * _time * _time + _start);
}