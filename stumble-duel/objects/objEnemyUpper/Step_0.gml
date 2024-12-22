
// if not two player. This is the bot code
if(!objMaster.twop){
	if(!objMaster.frozen){
		update();
		
		// basic decision tree: always move forward, unless you're leaning too far backwards. Then, move backwards
		dirGoal = -1.5;
		if(image_angle < -25) dirGoal = 1;
		
		// stop moving if opponent is dead
		if(objPlayerUpper.dead){
			dirGoal = 0;
			stiffness = .05;	
		}



		dir += (dirGoal - dir)/10;

		// make the player's spine more stiff if they're about to fall over - keeps the game interesting!
		if(dir > 0) stiffness = .05;
		if(dir < 0 and stiffness == .05 and abs(rChange) < .1) stiffness = .01;
		
		rChange -= sign(image_angle) * stiffness / size;
		

		// snap body angle back to 0
		if((image_angle < 0 and image_angle + rChange >= 0) or (image_angle > 0 and image_angle + rChange <= 0)){
			image_angle = 0;
			rChange *= .75;
		}
		

		image_angle += rChange;


		if(push > 0) push -= .5;
		
		// dies if off the stage or fallen over
		if((abs(image_angle) >= 90 || x <= 84 || x >= 1196) && !dead){
	
			dead = true;
			if(!global.muted) audio_play_sound(death,10,false);
	
			if(x <= 84 || x >= 1196) objEnemyLower.fall=1;

		}


		if(!dead){
			if(dir > 0) x += dir * 3;
			else x += dir * 3 * 1.25;
		}
		x += push;


		// jump off screen if dead
		if(dead){
			y -= jump;
			jump -= .5;
	
			if( y > 900) objMaster.death(2);
		}
	}
}
// if in two player mode
else{


	// player 1's controls but mirrored
	
	update();

	dir = (keyboard_check(vk_right) - keyboard_check(vk_left));
	if(dead || objMaster.frozen) dir = 0;



	
	if(dir < 0 and stiffness == .05 and abs(rChange) < .1) stiffness = .01;
	if(dir > 0) stiffness = .05;
	
	rChange -= sign(image_angle) * stiffness / size;

	// snap body angle back to 0
	if((image_angle < 0 and image_angle + rChange >= 0) or (image_angle > 0 and image_angle + rChange <= 0)){
		image_angle = 0;
		rChange *= .75;
	}


	image_angle += rChange;



	if(push > 0) push-=.5;

	if(dir < 0) dir *= 1.5;
	x += dir * 3;
	x += push;


	// dies if off stage or fallen over
	if((abs(image_angle) >= 90 || x <= 84 || x >= 1196) && !dead){
		dead = true;
		if(!global.muted) audio_play_sound(death,10,false);
	
		if(x <= 84 || x >= 1196) objEnemyLower.fall=1;
	
	}

	if(dead){
		y -= jump;
		jump -= .5;
	
		if( y > 900) objMaster.death(2);
	}


}

