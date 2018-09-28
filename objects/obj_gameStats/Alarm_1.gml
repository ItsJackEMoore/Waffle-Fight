/// @description game timer
if(fullRound != 0){
	fullRound--;
	alarm[1] = framerate;
}
else{
	alarm[2] = framerate * 5;
}
