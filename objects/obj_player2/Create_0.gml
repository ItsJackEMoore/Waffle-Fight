image_index = 1;
image_speed =0;
image_xscale = 0.1;
image_yscale = 0.1;

maxvel = 10;
vel = 0;
accell = 1;
minvel = 3;
rotspd = 4;
xloop = true;
yloop = true;
dragscl = .98;
brakscl = .95;

globalvar p2_leftR;
globalvar p2_rightR;
globalvar p2_acc;
globalvar p2_dec;

p2_leftR = vk_left;
p2_rightR = vk_right;
p2_acc = vk_up;
p2_dec = vk_down;

globalvar p2hx, p2hy, p2hp; p2hx = 0; p2hy = 0; p2hp = 5;
inv = 0;
invtime = 120;

canmove = true;