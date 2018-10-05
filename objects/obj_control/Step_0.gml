/// @desc Control control

//Item ease in

control_x += (control_x_target - control_x) / control_speed;

//Keyboard Controls
if(control_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		control_cursor++;
		if(control_cursor >= control_items)
		{
			control_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		control_cursor--;
		if(control_cursor < 0)
		{
			control_cursor = control_items - 1;
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		if(control_cursor = 0)
		{
			control_x_target = -400;
			control_committed = control_cursor;
			control_control = false;
		}
		else
		{
			control_committed = control_cursor;
			control_control = false;
		}
	}
}
if(control_x < -300) && (control_committed != -1)
{
	switch (control_committed)
	{
		case 0: instance_create_layer(0,0,"Instances",obj_options); instance_destroy(self) break; //Option controls break; //Should go back to r_Menu
	}
}
else if(control_committed != -1 && control_cursor > 0)
{
	switch(control_committed)
	{
		case 8: default: instance_create_layer(0,0,"Instances",obj_keySwitch); control_to_change = control_cursor;  break; //Player 1 Right Rotate
		case 7: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break; //Player 1 Left Rotate
		case 6: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break; //Player 1 Accelerate
		case 5: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break //Player 1 Decelerate 
		case 4: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break; //Player 2 Right Rotate
		case 3: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break; //Player 2 Left Rotate
		case 2: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break;//Player 2 Accelerate
		case 1: control_to_change = control_cursor; instance_create_layer(0,0,"Instances",obj_keySwitch); break; //PLayer 2 Decelerate
	}
}