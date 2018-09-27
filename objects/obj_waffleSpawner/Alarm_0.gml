/// @description spawns Waffles
randomize();
chose = choose(1,2);
rand_x = random_range(0,room_width);
rand_y = random_range(0,room_height);
if(maxBWaffles > currBWaffles) && (maxWaffles > currWaffles)
{
	switch(chose){
		case 1: default: instance_create_layer(rand_x,rand_y,"Game",obj_waffle); currWaffles++; alarm[0] = spawnrate; break;
		case 2: instance_create_layer(rand_x,rand_y,"Game",obj_burntWaffle); currBWaffles++; alarm[0] = spawnrate; break;
	}
}
if(maxBWaffles <= currBWaffles) && (maxWaffles > currWaffles){
	instance_create_layer(rand_x,rand_y,"Game",obj_waffle); currWaffles++;
	alarm[0] = spawnrate
}
if(maxBWaffles > currBWaffles) && (maxWaffles <= currWaffles){
	instance_create_layer(rand_x,rand_y,"Game",obj_burntWaffle); currBWaffles++;
	alarm[0] = spawnrate
}
	