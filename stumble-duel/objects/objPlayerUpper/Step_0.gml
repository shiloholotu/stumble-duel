

update();

dir = (keyboard_check(ord("D")) - keyboard_check(ord("A")));

if(dead || objMaster.frozen) dir = 0;




// make the player's spine more stiff if they're about to fall over - keeps the game interesting!

if(dir < 0) stiffness = .05;
if(dir > 0 and stiffness == .05 and abs(rChange) < .1) stiffness = .01;

rChange -= sign(image_angle) * stiffness/size;

// snap body angle back to 0
if((image_angle < 0 and image_angle + rChange >= 0) or (image_angle > 0 and image_angle + rChange <= 0)){
	image_angle = 0;
	rChange *= .75;
}


image_angle += rChange;

// collisions between players
if(place_meeting(x,y, objEnemyUpper)){
	if(!global.muted) audio_play_sound(clash,10,false);
	
	push = 10;	
	objEnemyUpper.push = 10;
	
	// the bigger you are, the less angular acceleration
	rChange += .3 * (6-size)/2.5;
	objEnemyUpper.rChange -= .3 * (6-objEnemyUpper.size)/2.5;
	objMaster.frozen=false;
	
}

if(push > 0) push-=.5;

if(dir > 0) dir *= 1.5;
x += dir * 3;
x -= push;


// dies if off stage or fallen over
if((abs(image_angle) >= 90 || x <= 84 || x >= 1196) && !dead){
	dead = true;
	if(!global.muted) audio_play_sound(death,10,false);
	
	if(x <= 84 || x >= 1196) objPlayerLower.fall=1;
	
}

if(dead){
	y -= jump;
	jump -= .5;
	
	if( y > 900) objMaster.death(1);
}


