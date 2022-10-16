function tween_type_easeout_cubic(_time, _start, _change, _duration)
{
	_time /= _duration;
	_time--;
	return _change * ( _time * _time * _time + 1) + _start;
}