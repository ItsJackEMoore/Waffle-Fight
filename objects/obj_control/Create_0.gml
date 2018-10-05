/// @description GUI/VARS/Menu setup
instance_create = false;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

control_x = 0;
control_y = gui_height/2 + 100;
control_x_target = gui_margin * 1.5;
control_speed = 25; //lower is faster
control_font = f_Menu;
control_itemheight = font_get_size(f_Menu);
globalvar control_committed; 
control_committed = -1;
globalvar control_control;
control_control = true;

control[8] = "Player 1 Right Rotate";
control[7] = "Player 1 Left Rotate";
control[6] = "Player 1 Accelerate";
control[5] = "Player 1 Decelerate";
control[4] = "Player 2 Right Rotate";
control[3] = "Player 2 Left Rotate";
control[2] = "Player 2 Accelerate";
control[1] = "Player 2 Decelerate";
control[0] = "Back"


control_items = array_length_1d(control)
control_cursor = 8;