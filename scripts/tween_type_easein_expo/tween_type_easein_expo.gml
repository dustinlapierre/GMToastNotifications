function tween_type_easein_expo(_time, _start, _change, _duration)
{
	return _change * power(2, 10 * (_time/_duration - 1)) + _start;
}