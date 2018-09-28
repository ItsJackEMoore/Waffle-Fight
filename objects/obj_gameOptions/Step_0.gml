/// @desc Control game

//Item ease in

game_x += (game_x_target - game_x) / game_speed;

//Keyboard Controls
if(game_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		game_cursor++;
		if(game_cursor >= game_items)
		{
			game_cursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		game_cursor--;
		if(game_cursor < 0)
		{
			game_cursor = game_items - 1;
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		game_x_target = -300;
		game_committed = game_cursor;
		game_control = false;
	}
}
if(game_x < -100) && (game_committed != -1)
{
	switch (game_committed)
	{
		case 2: room_restart(); break;
		case 1: game_restart(); break;
		case 0: game_end(); break;
	}
}