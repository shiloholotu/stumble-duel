/// @description Insert description here
// You can write your code in this editor
image_xscale += (goal - image_xscale)/20;
image_yscale += (goal - image_xscale)/20;

if(position_meeting(mouse_x, mouse_y, id) && visible){
	cursor = true;
	goal = 3;
	if (mouse_check_button_pressed(mb_left)){
		global.played = 1;
		//audio_play_sound(death,10,false);
		wait= 1;
		//objMaster.songS = audio_play_sound(song,10,true);
		//objMaster.cheerS = audio_play_sound(cheers,10,true);
		//visible = false;
		//objCurtain.waiting = false;
	}
}
else{
	goal = 2.5;
	cursor = false;
}

image_angle = cur;
cur += rChange;

if(cur > 0) rChange -= .005;
else rChange += .005;
if(wait >= 1) wait++;
if(wait == 15) game_restart();