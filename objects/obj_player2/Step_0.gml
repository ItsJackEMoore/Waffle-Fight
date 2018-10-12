if(p2_leftR = 1){
	p2_leftR = vk_left;
	
}
if(p2_rightR = 1){
	p2_rightR = vk_right;
	
}
if(p2_acc = 1){
	p2_acc = vk_up;
}
if(p2_dec = 1){
	p2_dec = vk_down;

}
if (canmove) {
	if (keyboard_check(p2_leftR)) image_angle = image_angle + rotspd;
	if (keyboard_check(p2_rightR)) image_angle = image_angle - rotspd;
	if (keyboard_check(p2_acc)) p2vel = min(p2vel + accell, maxvel);
	if (!(keyboard_check(p2_acc)) && (abs(p2vel) > minvel)) p2vel = p2vel * dragscl;
	if ((keyboard_check(p2_dec)) && (abs(p2vel) > minvel)) p2vel = p2vel * brakscl;
	if ((keyboard_check(p2_dec)) && (abs(p2vel) <= minvel)) p2vel = 0;
}

motion_set(image_angle, -p2vel);

p2hx = lengthdir_x((721 * image_xscale), (image_angle + 139)) + x;
p2hy = lengthdir_y((721 * image_yscale), (image_angle + 139)) + y;
hb1x = lengthdir_x((200 * image_xscale), image_angle + 15) + x;
hb1y = lengthdir_y((200 * image_yscale), image_angle + 15) + y;
hb2x = lengthdir_x((400 * image_xscale), image_angle + 30) + x;
hb2y = lengthdir_y((400 * image_yscale), image_angle + 30) + y;

if xloop
{
	if (x < 0) x = room_width;
	if (x > room_width) x = 0;
}
if !xloop
{
	if (x < 0) x = 0;
	if (x > room_width) x = room_width;
}
if yloop
{
	if (y < 0) y = room_height;
	if (y > room_height) y = 0;
}
if !yloop
{
	if (y < 0) y = 0;
	if (y > room_width) y = room_width;
}

if (inv <= 0)
{
	if (point_in_rectangle(p1hx, p1hy, x - (200 * image_xscale), y - (200 * image_yscale), x + (200 * image_xscale), y + (200 * image_yscale)) or point_in_rectangle(p1hx, p1hy, hb1x - (200 * image_xscale), hb1y - (200 * image_yscale), hb1x + (200 * image_xscale), hb1y + (200 * image_yscale)) or point_in_rectangle(p1hx, p1hy, hb2x - (200 * image_xscale), hb2y - (200 * image_yscale), hb2x + (200 * image_xscale), hb2y + (200 * image_yscale)))
	{
		p2hp--;
		inv = invtime;
		p2vel = 0;
		p1vel = min(-p1vel, -5);
	}
}
inv--;

if (p2hp <= 0)
{
	player1Points += 3;
	player2Points -= 3;
	instance_create_layer(1820,540,"Game",obj_player2);
	instance_destroy(self);
}