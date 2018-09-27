/// @description video Page Format

draw_set_font(video_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
for(var i = 0; i < video_items; i++)
{
	var offset = 2;
	var txt = video[i];
	if(video_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = video_x
	var yy = video_y - (video_itemheight * (i * 1.5))
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
}