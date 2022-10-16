if(!instance_exists(owner)) instance_destroy();

var _tween_value; 
var _tween_change = (EndVal - tween_StartValue);

if(tween_time <= duration)
{
	_tween_value = script_execute(TweenType, tween_time, tween_StartValue, _tween_change, duration);
		
	tween_time++;
	variable_instance_set(owner, variable_string, _tween_value);
}
else
	instance_destroy();