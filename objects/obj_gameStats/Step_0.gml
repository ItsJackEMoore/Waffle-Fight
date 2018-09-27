/// @description Game Stat Effects

if(countdown <= 0 && start = 1){
	instance_create_layer(gui_margin,gui_height/2,"Game",obj_player1);
	instance_create_layer(gui_width - gui_width/4,gui_height/2,"Game",obj_player2);
	instance_create_layer(0,0,"Instances",obj_waffleSpawner);
	start --;
}
if(fullRound = 0){
	instance_deactivate_all(1);
}
if(fullRound = 0){
	if(keyboard_check(ord("R"))){
		room_restart();
	}
	if(keyboard_check(ord("Q"))){
		game_end();
	}
	if(keyboard_check(vk_escape)){
		scr_Transition(TRANS_MODE.GOTO, r_menu)
	}
}