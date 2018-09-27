gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

audio_x = 0;
audio_y = gui_height/2;
audio_x_target = gui_margin * 1.5;
audio_speed = 25; //lower is faster
audio_font = f_Menu;
audio_itemheight = font_get_size(f_Menu);
audio_committed = -1;
audio_audio = true;


audio[3] = "Master";
audio[2] = "Music";
audio[1] = "Misc";
audio[0] = "Back";


audio_items = array_length_1d(audio)
audio_cursor = 3;