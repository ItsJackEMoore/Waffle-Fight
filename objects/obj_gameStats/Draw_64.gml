/// @description draw counters

//Player 2 Points
draw_set_font(f_Menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var xx = p2_score_x;
var yy = p2_score_y;
txt = player2Points;
draw_set_color(c_black);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);

//Player 1 Points
draw_set_font(f_Menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var xx = p1_score_x;
var yy = p1_score_y;
txt = player1Points;
draw_set_color(c_black);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);

//Round Timer
draw_set_font(f_Menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var xx = roundCounter_x;
var yy = roundCounter_y;
txt = fullRound;
draw_set_color(c_black);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_text(xx,yy,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);
