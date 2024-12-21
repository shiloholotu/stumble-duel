/// @description Insert description here
// You can write your code in this editor

update();

dir = (keyboard_check(ord("D")) - keyboard_check(ord("A")));

if(dead || objMaster.frozen) dir = 0;

// move in favor of you
if((dir == -1 and image_angle > 0) || (dir == 1 and image_angle < 0)) rChange += dir * .04// * size;
else rChange += dir * .020// * size;


rChange += sign(image_angle) * .002;

image_angle += rChange// * size;

if(place_meeting(x,y, objEnemyUpper)){
	if(!global.muted) audio_play_sound(clash,10,false);
	push = 10;	
	objEnemyUpper.push = 10;
	rChange += .1 * size;
	objEnemyUpper.rChange -= .1 * objEnemyUpper.size;
	objMaster.frozen=false;
	
}

if(push > 0) push-=.5;

if(dir > 0) dir *= 1.5;
x += dir * 3;
x -= push;


// death

if((abs(image_angle) >= 90 || x <= 84 || x >= 1196) && !dead){
	dead = true;
	if(!global.muted) audio_play_sound(death,10,false);
	
	if(x <= 84 || x >= 1196) objPlayerLower.fall=1;
	
	//if(size != 5)size+=2;
	//reset();
}

if(dead){
	y -= jump;
	jump -= .5;
	
	if( y > 900) objMaster.death(1);
}


