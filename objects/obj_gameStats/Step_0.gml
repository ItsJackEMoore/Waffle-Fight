/// @description Game Stat Effects

if(countdown <= 0 && start = 1){
	instance_create_layer(0,0,"Instances",obj_waffleSpawner);
	instance_create_layer(gui_margin,gui_height/2,"Game",obj_player1);
	instance_create_layer(gui_width/2,gui_height/2,"Game",obj_player2);
	instance_create_layer(gui_margin/2,y,"Game",obj_body1);
	
	start--;

}
if(fullRound = 0){
	instance_deactivate_all(1);
}