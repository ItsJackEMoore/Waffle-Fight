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
	instance_create_layer(0,0,"Instances",obj_options); 
	instance_destroy(self);

}
if(control_committed != -1 && control_cursor > 0  && instance_create = false)
{
	instance_create = true;
	instance_create_layer(0,0,"Instances",obj_keySwitch); 
	control_to_change = control_cursor;  

}