/// @description control Page Format
draw_set_font(control_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
for(var i = 0; i < control_items; i++)
{
	var offset = 2;
	var txt = control[i];
	if(control_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = control_x
	var yy = control_y - (control_itemheight * (i * 1.5))
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
}
