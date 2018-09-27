/// @description GUI/VARS/option setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

option_x = 0;
option_y = gui_height/2;
option_x_target = gui_margin * 1.5;
option_speed = 25; //lower is faster
option_font = f_Menu;
option_itemheight = font_get_size(f_Menu);
option_committed = -1;
option_control = true;

option[2] = "Control";
option[1] = "Video";
option[0] = "Back";

option_items = array_length_1d(option)
option_cursor = 2;
