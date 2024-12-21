/// @description Insert description here
// You can write your code in this editor
image_xscale += (goal - image_xscale) /20;
image_yscale += (goal - image_yscale) /20;

image_alpha += (goal2 - image_alpha)/20;


if(position_meeting(mouse_x, mouse_y, id) && visible){
	cursor = true;
	goal = 2.5;
	if (mouse_check_button_pressed(mb_left)){
		global.played = 1;
		audio_sound_gain(objMaster.cheerS, 0, 300);
		audio_sound_gain(objMaster.songS, 0, 300);
		objMaster.gameOver = true;
		objCurtain.goal = 780;
	}
	goal2 = 1;
}
else{
	goal = 2;
	goal2 = .5;
	cursor = false;
}