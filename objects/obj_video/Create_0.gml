/// @description GUI/VARS/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

video_x = 0;
video_y = gui_height/2;
video_x_target = gui_margin * 1.5;
video_speed = 25; //lower is faster
video_font = f_Menu;
video_itemheight = font_get_size(f_Menu);
video_committed = -1;
video_control = true;

video[2] = "Resolution";
video[1] = "Frame Rate";
video[0] = "Back";

video_items = array_length_1d(video)
video_cursor = 2;

