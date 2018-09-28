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