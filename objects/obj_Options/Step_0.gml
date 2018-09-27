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
if(option_x < -150) && (option_committed != -1)
{
	switch (option_committed)
	{
		case 2: default: instance_create_layer(0,0,"Instances",obj_controls); instance_destroy(self); break; //Should go to Control Menu
		case 1: instance_create_layer(0,0,"Instances",obj_video); instance_destroy(self) break; //Should go to Video Menu
		case 0: scr_Transition(TRANS_MODE.GOTO,r_Menu); break; //Should go back to r_Menu
	}
}
