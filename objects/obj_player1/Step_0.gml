/// @description Narwhal movement

if (keyboard_check(p1_leftR)) image_angle = image_angle + rotspd;
if (keyboard_check(p1_rightR)) image_angle = image_angle - rotspd;
if (keyboard_check(p1_acc)) vel = min(vel + accell, maxvel);
if (!(keyboard_check(p1_acc)) && (vel < minvel)) vel = vel * dragscl;
if ((keyboard_check(p1_dec)) && (vel < minvel)) vel = vel * brakscl;
if ((keyboard_check(p1_dec)) && (vel >= minvel)) vel = 0;

motion_set(image_angle, -vel);

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

