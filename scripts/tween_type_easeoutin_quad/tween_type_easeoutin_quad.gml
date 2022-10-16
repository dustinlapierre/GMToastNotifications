//essentially pauses the ibject in the middle for a bit and eases in and out
function tween_type_easeoutin_quad(_time, _start, _change, _duration)
{
	if(_time < _duration/2) return tween_type_easeout_quad(_time * 2, _start, _change/2, _duration);
	
	else return tween_type_easein_quad((_time*2)-_duration, _start+_change/2, _change/2, _duration);
}