function tween_type_easeinout_quad(_time, _start, _change, _duration)
{
	_time /= _duration/2;
	
	if(_time < 1) return (_change / 2 * _time * _time + _start);
	
	_time--;
	
	return (-_change/2 * (_time * (_time-2) - 1) + _start);
}