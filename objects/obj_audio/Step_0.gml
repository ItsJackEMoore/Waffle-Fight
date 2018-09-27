/// @desc audio audio

//Item ease in

audio_x += (audio_x_target - audio_x) / audio_speed;

//Keyboard audios
if(audio_audio)
{
	if (keyboard_check_pressed(vk_up))
	{
		audio_cursor++;
		if(audio_cursor >= audio_items)
		{
			audio_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		audio_cursor--;
		if(audio_cursor < 0)
		{
			audio_cursor = audio_items - 1;
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		if(audio_cursor = 0)
		{
			audio_x_target = -400;
			audio_committed = audio_cursor;
			audio_audio = false;
		}
		else
		{
			audio_committed = audio_cursor;
			audio_audio = false;
		}
	}
}
if(audio_x < -300) && (audio_committed != -1)
{
	switch (audio_committed)
	{
		case 1: default: game_end(); break;
		case 0: instance_create_layer(0,0,"Instances",obj_options); instance_destroy(self) break; //Option audios break; //Should go back to r_Menu
	}
}
else if(audio_committed != -1)
{
	switch(audio_committed)
	{

		case 3: break; //Master
		case 2: break;//Music
		case 1: break; //Misc
	}
}