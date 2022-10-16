if(text != noone)
{
	//draw 9-slice box
	draw_sprite_stretched_ext(
		spr_notification_theme,
		0,
		draw_x, 
		draw_y, 
		string_width(text) + padding*2, 
		string_height(text) + padding*2,
		c_white,
		opacity
	)
	
	//draw text
	draw_set_alpha(opacity);
	draw_set_color(text_color);
	
	draw_text(draw_x+padding, draw_y+padding, text)
	
	draw_set_alpha(opacity);
	draw_set_color(text_color);
}