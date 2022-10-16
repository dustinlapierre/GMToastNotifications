//WARNING - the back tween types will dip below and go above the min and max values
function tween_type_easein_back(_time, _start, _change, _duration)
{
	var _s = 1.70158;
	_time /= _duration;
	return _change * (_time) * _time * ((_s + 1) * _time - _s) + _start;
}