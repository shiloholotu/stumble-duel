/// @description Insert description here
// You can write your code in this editor
if(!objMaster.twop){
	if(!objMaster.frozen){
		update();
		dirGoal = -1.5;
		if(image_angle < random(15))dirGoal = 1;




		//dirGoal *= .75;
		dir += (dirGoal - dir)/10;


		if((dir < 0 and image_angle < 0) || (dir > 0 and image_angle < 0)) rChange += dir * .01// * size;
		else rChange += dirGoal * .005// * size;

		image_angle += rChange //*size;


		if(push > 0) push -= .5;

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



		if(dead){
			y -= jump;
			jump -= .5;
	
			if( y > 900) objMaster.death(2);
		}
	}
}
else{


	update();

	dir = (keyboard_check(vk_right) - keyboard_check(vk_left));

	if(dead || objMaster.frozen) dir = 0;

	// move in favor of you
	if((dir == -1 and image_angle > 0) || (dir == 1 and image_angle < 0)) rChange += dir * .01// * size;
	else rChange += dir * .005// * size;
	
	rChange += sign(image_angle) * .002;


	image_angle += rChange// * size;



	if(push > 0) push-=.5;

	if(dir < 0) dir *= 1.5;
	x += dir * 3;
	x += push;


	// death

	if((abs(image_angle) >= 90 || x <= 84 || x >= 1196) && !dead){
		dead = true;
		if(!global.muted) audio_play_sound(death,10,false);
	
		if(x <= 84 || x >= 1196) objEnemyLower.fall=1;
	
		//if(size != 5)size+=2;
		//reset();
	}

	if(dead){
		y -= jump;
		jump -= .5;
	
		if( y > 900) objMaster.death(2);
	}



}

