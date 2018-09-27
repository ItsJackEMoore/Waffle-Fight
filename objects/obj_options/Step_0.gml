/// @desc Control option

//Item ease in

option_x += (option_x_target - option_x) / option_speed;

//Keyboard Controls
if(option_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		option_cursor++;
		if(option_cursor >= option_items)
		{
			option_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		option_cursor--;
		if(option_cursor < 0)
		{
			option_cursor = option_items - 1;
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		option_x_target = -300;
		option_committed = option_cursor;
		option_control = false;
	}
}
if(option_x < -200) && (option_committed != -1)
{
	switch (option_committed)
	{
		case 3: instance_create_layer(0,0,"Instances",obj_control); instance_destroy(self); break;
		case 2: instance_create_layer(0,0,"Instances",obj_video); instance_destroy(self); break;
		case 1: instance_create_layer(0,0,"Instances",obj_audio); instance_destroy(self); break;
		case 0: scr_Transition(TRANS_MODE.GOTO,r_menu); break;
	}
}