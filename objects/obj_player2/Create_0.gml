image_index = 1;
image_speed = 0;
image_xscale = 0.1;
image_yscale = 0.1;

maxvel = 10;
globalvar p2vel; p2vel = 0;
accell = .5;
minvel = 1.5;
rotspd = 4;
xloop = true;
yloop = true;
dragscl = .98;
brakscl = .95;

<<<<<<< HEAD
globalvar p2hx, p2hy, p2hp; p2hx = 0; p2hy = 0; p2hp = 5;
=======
globalvar p2_leftR;
globalvar p2_rightR;
globalvar p2_acc;
globalvar p2_dec;

p2_leftR = vk_left;
p2_rightR = vk_right;
p2_acc = vk_up;
p2_dec = vk_down;

globalvar p2hx, p2hy, p2hp; p2hx = 0; p2hy = 0; p2hp = 3;
hb1x = 0; hb1y = 0; hb2x = 0; hb2y = 0;
>>>>>>> better-hitboxes-and-knockback
inv = 0;
invtime = 60;

canmove = true;