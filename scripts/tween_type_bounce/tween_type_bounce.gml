//ease out with a bounce at the end
function tween_type_bounce(_time, _start, _change, _duration)
{
	_time = _time / _duration;
	
	if(_time < 1 / 2.75)
	{
		return (_change * (7.5625 * _time * _time) + _start);	
	}
	else if(_time < 2 / 2.75)
	{
		_time = _time - (1.5 / 2.75);
		return (_change * (7.5625 * _time * _time + 0.75) + _start);
	}
	else if(_time < 2.5 / 2.75)
	{
		_time = _time - (2.25 / 2.75);
		return (_change * (7.5625 * _time * _time + 0.9375) + _start);
	}
	else
	{
		_time = _time - (2.625 / 2.75);
		return (_change * (7.5625 * _time * _time + 0.984375) + _start);
	}
}