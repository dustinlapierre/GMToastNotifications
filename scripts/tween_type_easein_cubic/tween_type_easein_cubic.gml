function tween_type_easein_cubic(_time, _start, _change, _duration)
{
	_time /= _duration;
	return (_change * _time * _time * _time + _start);
}