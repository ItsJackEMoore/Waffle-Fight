/// @desc Control Menu

//Item ease in

menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if(menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if(menu_cursor >= menu_items)
		{
			menu_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if(menu_cursor < 0)
		{
			menu_cursor = menu_items - 1;
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}
if(menu_x > gui_width +150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: scr_Transition(TRANS_MODE.GOTO,r_Space);  break; //will be r_LevelSelect
		case 1: scr_Transition(TRANS_MODE.GOTO,r_Options); break; //takes to Option room
		case 0: game_end(); break; //If Quit is chosen
	}
}
