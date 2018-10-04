if (canmove) {
	if (keyboard_check(p1_leftR)) image_angle = image_angle + rotspd;
	if (keyboard_check(p1_rightR)) image_angle = image_angle - rotspd;
	if (keyboard_check(p1_acc)) p1vel = min(p1vel + accell, maxvel);
	if (!(keyboard_check(p1_acc)) && (abs(p1vel) > minvel)) p1vel = p1vel * dragscl;
	if ((keyboard_check(p1_dec)) && (abs(p1vel) > minvel)) p1vel = p1vel * brakscl;
	if ((keyboard_check(p1_dec)) && (abs(p1vel) <= minvel)) p1vel = 0;
}

motion_set(image_angle, -p1vel);

p1hx = lengthdir_x((721 * image_xscale), (image_angle + 139)) + x;
p1hy = lengthdir_y((721 * image_yscale), (image_angle + 139)) + y;
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
	if (point_in_rectangle(p2hx, p2hy, x - (200 * image_xscale), y - (200 * image_yscale), x + (200 * image_xscale), y + (200 * image_yscale)) or point_in_rectangle(p2hx, p2hy, hb1x - (200 * image_xscale), hb1y - (200 * image_yscale), hb1x + (200 * image_xscale), hb1y + (200 * image_yscale)) or point_in_rectangle(p2hx, p2hy, hb2x - (200 * image_xscale), hb2y - (200 * image_yscale), hb2x + (200 * image_xscale), hb2y + (200 * image_yscale)))
	{
		p1hp--;
		inv = invtime;
		p1vel = 0;
		p2vel = min(-p2vel, -5);
	}
}
inv--;

if (p1hp <= 0)
{
	player1Points -= 3;
	player2Points += 3;
	instance_create_layer(100,540,"Game",obj_player1);
	instance_destroy(self);
}