/// @description GUI/VARS/game setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

game_x = 0;
game_y = gui_height/2;
game_x_target = gui_width/2;
game_speed = 25; //lower is faster
game_font = f_Menu;
game_itemheight = font_get_size(f_Menu);
game_committed = -1;
game_control = true;


game[2] = "Restart";
game[1] = "Menu";
game[0] = "Quit";

game_items = array_length_1d(game)
game_cursor = 2;
