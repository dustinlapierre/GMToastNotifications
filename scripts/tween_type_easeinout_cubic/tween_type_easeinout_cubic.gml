function tween_type_easeinout_cubic(_time, _start, _change, _duration)
{
	_time /= _duration/2;
	if(_time < 1) return _change/2 * _time * _time * _time + _start;
	_time -= 2;
	return _change/2 * ( _time * _time * _time + 2) + _start;
}