//Get inputs
Controls()

//X Movement
	//Direction
	moveDir = right_key - left_key;	
	
	//get xspeed
	runType = runKey;
	xspeed = moveDir * movespeed[runType];
	
	//X collision
	if place_meeting(x + xspeed,y, obj_wall)
	{
		xspeed = 0;	
	}
	
	//increasing speed
	x += xspeed
	
	
	
	
//Y Movement
	//Gravity
	yspeed += grav;
	
	//Reset/prepare jumping variables
	if on_ground
	{
		jump_count = 0;
	} else {
		//if the player is in the air, make sure he doesn't get an extra jump
		if jump_count == 0 { jump_count = 1; }
	}
		
	//Jump
	if jump_key_pressed && jump_count < jump_max
	{
		//increse the number of performed jumps
		jump_count ++;
		
		
		//set th jump hold timer
		jump_hold_timer = jump_hold_frames;
	}
	//Cut of jump by realeasing the jump button
	if !jump_key { jump_hold_timer = 0; }
	
	//jump based on the timer/holding the button
	if jump_hold_timer > 0
	{
		//constantly set the yspeed to be jumping speed
		yspeed = jumpspeed
		//Count down the timer
		jump_hold_timer--;
	}
	
	//Y Collision and movement
	//Cap falling speed
	if yspeed > termVel 
		{
		yspeed = termVel;
		}

	//Collision
	if place_meeting(x, y+yspeed , obj_wall)
	{
		yspeed = 0;	
	}
	
	//Set if i'm on the ground
	if yspeed >= 0  && place_meeting (x, y+1, obj_wall) 
	{
		on_ground = true;
	} else {
		on_ground = false;
	}
	
	
	//Increasing speed
	y += yspeed
	
	
//Set sprites
	//walking
	if abs(xspeed) > 0 { sprite_index = spr_player_walking };
	if xspeed > 0 { image_xscale = 1};
	if xspeed < 0 { image_xscale = -1};
	//Running 
	if abs(xspeed) >= movespeed[1] {sprite_index = spr_player_running};
	//Not moving
	if xspeed == 0 {sprite_index = spr_player_idle};
	//Jump
	if !on_ground {sprite_index = spr_player_jump}
		