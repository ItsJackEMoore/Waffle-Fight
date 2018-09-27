/// @description audio Page Format

draw_set_font(audio_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
for(var i = 0; i < audio_items; i++)
{
	var offset = 2;
	var txt = audio[i];
	if(audio_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = audio_x
	var yy = audio_y - (audio_itemheight * (i * 1.5))
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
}