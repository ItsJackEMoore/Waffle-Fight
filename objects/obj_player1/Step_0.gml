if(p1_leftR = 1){
	p1_leftR = ord("A");

}
if(p1_rightR = 1){
	p1_rightR = ord("D");

}
if(p1_acc = 1){
	p1_acc = ord("W");
	

}
if(p1_dec = 1){
	p1_dec = ord("S");
}

if (canmove) {
	if (keyboard_check(p1_leftR)) image_angle = image_angle + rotspd;
	if (keyboard_check(p1_rightR)) image_angle = image_angle - rotspd;
	if (keyboard_check(p1_acc)) vel = min(vel + accell, maxvel);
	if (!(keyboard_check(p1_acc)) && (vel > minvel)) vel = vel * dragscl;
	if ((keyboard_check(p1_dec)) && (vel > minvel)) vel = vel * brakscl;
	if ((keyboard_check(p1_dec)) && (vel <= minvel)) vel = 0;
}

motion_set(image_angle, -vel);

p1hx = lengthdir_x((721 * image_xscale), (image_angle + 139)) + x;
p1hy = lengthdir_y((721 * image_yscale), (image_angle + 139)) + y;

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
	if point_in_rectangle(p2hx, p2hy, x - (200 * image_xscale), y - (200 * image_yscale), x + (200 * image_xscale), y + (200 * image_yscale))
	{
		p1hp--;
		inv = invtime;
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