/// @desc Control video

//Item ease in

video_x += (video_x_target - video_x) / video_speed;

//Keyboard Controls
if(video_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		video_cursor++;
		if(video_cursor >= video_items)
		{
			video_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		video_cursor--;
		if(video_cursor < 0)
		{
			video_cursor = video_items - 1;
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		if(video_cursor = 0)
		{
			video_x_target = -200;
			video_committed = video_cursor;
			video_control = false;
		}
		else
		{
			video_committed = video_cursor;
			video_control = false;
		}
	}
}
if(video_x < -100) && (video_committed != -1)
{
	switch (video_committed)
	{
		case 1: default: game_end(); break;
		case 0: instance_create_layer(0,0,"Instances",obj_options); instance_destroy(self); break; //Option controls
	}
}
else if(video_committed != -1)
{
	switch(video_committed)
	{
		case 2: default: break; //Resolution
		case 1: break; //Frame Rate
	}
}