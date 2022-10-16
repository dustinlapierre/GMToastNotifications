//create a tweener that tweens the given variable
function tween(_variable_string, _EndVal, _duration, _TweenType=tween_type_easeout_expo)
{
	var _id = id;
	//if variable doesn't exist, return
	var _start_value = variable_instance_get(id, _variable_string);
	if(_start_value == undefined) return;
	
	//if this value is already being tweened delete the old tweener
	with(obj_tweener)
	{
		if(_variable_string == variable_string && owner == _id)	
		{
			show_debug_message("That value is already being tweened! Old tweener deleted!");
			instance_destroy();
		}
	}
	
	//create the tweener
	var _tweener = instance_create_depth(0,0,depth,obj_tweener);
	with(_tweener)
	{
		variable_string = _variable_string;
		EndVal = _EndVal;
		duration = _duration;
		TweenType = _TweenType;
		
		tween_StartValue = _start_value;
		owner = _id;
	}
	
	return _tweener;
}