/// @description Insert description here
// You can write your code in this editor
if(fall){
	y += change;

	if(y >= ogY){
		y = ogY;
		change = jump;
		if(jump < -1 && (!global.muted)) audio_play_sound(clash,10,false);
		jump /= 2;
		
	}

	change += .5;
}

if(jump > -.1 || true){
	image_angle = cur;
	cur += rChange;

	if(cur > 0) rChange -= .005;
	else rChange += .005;
}
