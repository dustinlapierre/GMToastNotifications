function show_text_notification(_text, _text_padding=10, _left_margin=10, _bottom_margin=10)
{
	var new_notification = instance_create_depth(0, 0, depth, par_notification);
	new_notification.text = _text;
	new_notification.draw_x = _left_margin;
	new_notification.padding = _text_padding;
	
	with(par_notification)
	{
		//slide all notifications up to fit the new one
		true_draw_y -= (string_height(_text) + (_text_padding * 2) + _bottom_margin);
		tween("draw_y", true_draw_y, 15);
	}
	
	//animate the notification fade in
	with(new_notification)
		tween("opacity", 1, 15);
}