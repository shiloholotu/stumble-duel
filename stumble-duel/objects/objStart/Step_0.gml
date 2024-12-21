/// @description Insert description here
// You can write your code in this editor
image_xscale += (goal - image_xscale)/20;
image_yscale += (goal - image_xscale)/20;

if(position_meeting(mouse_x, mouse_y, id) && visible){
	cursor = true;
	goal = 2.5;
	if (mouse_check_button_pressed(mb_left)){
		if(!global.muted) audio_play_sound(clash,10,false);
		objCurtain.goal = 780;
	}
}
else{
	goal = 2
	cursor = false;
}