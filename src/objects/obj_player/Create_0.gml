//Moving
moveDir = 0;
movespeed[0] = 2;
movespeed[1] = 3.5;
runType = 0;
xspeed = 0;
yspeed = 0;

//Jumping
grav = .275;
termVel = 4;		// termVel significa ''terminal velocity''. É o máximo de velocidade que pode-se atingir quando cair por muito tempo
jumpspeed = -3.15;	
jump_max = 2;
jump_count = 0;
jump_hold_timer = 0;
jump_hold_frames = 16;
on_ground = true;