/// @description timer information
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

start = 1;

p2_score_x = gui_width - gui_margin;//+ 200;
p2_score_y = gui_margin;

p1_score_x = gui_margin;
p1_score_y = gui_margin;

roundCounter_x = gui_width/2;
roundCounter_y = gui_margin;

globalvar player1Points;
globalvar player2Points;

player1Points = 0;
player2Points = 0;

countdown = 3;
framerate = room_speed;
fullRound = 60;
alarm[0] = framerate;
