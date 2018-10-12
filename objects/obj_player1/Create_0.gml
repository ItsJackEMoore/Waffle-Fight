image_angle = 180;
image_index = 0;
image_speed = 0;
image_xscale = 0.1;
image_yscale = 0.1;
maxvel = 10;
globalvar p1vel; p1vel = 0;
accell = .5;
minvel = 1.5;
rotspd = 4;
xloop = true;
yloop = true;
dragscl = .98;
brakscl = .95;

<<<<<<< HEAD
globalvar p1hx, p1hy, p1hp; p1hx = 0; p1hy = 0; p1hp = 5;
=======
globalvar p1_leftR;
globalvar p1_rightR;
globalvar p1_acc;
globalvar p1_dec;

p1_leftR = ord("A");
p1_rightR = ord("D");
p1_acc = ord("W");
p1_dec = ord("S");

globalvar p1hx, p1hy, p1hp; p1hx = 0; p1hy = 0; p1hp = 3;
hb1x = 0; hb1y = 0; hb2x = 0; hb2y = 0;
>>>>>>> better-hitboxes-and-knockback
inv = 0;
invtime = 60;

canmove = true;