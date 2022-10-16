function tween_type_easeout_quad(_time, _start, _change, _duration)
{
	_time /= _duration;
	return (-_change * _time * (_time-2) + _start);
}