/// @description Insert description here
// You can write your code in this editor
image_xscale += ((-goal) - image_xscale)/20;
image_yscale += (goal - image_yscale)/20;

if(position_meeting(mouse_x, mouse_y, id)){
	goal = 1.65;
	cursor = true;
}
else{
	goal = 1.5;
	cursor = false;
}

if(mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id) && visible){
	depth=-10;
	image_alpha = 1;
}


if(mouse_check_button_released(mb_left) && image_alpha == 1 && visible){
	depth = ogDepth;
	image_alpha = .6;
	objEnemyChoice.x = objEnemyChoice.ogX;
	objEnemyChoice.toggle(1);	
	objEnemyChoice.shift = 5;
	objEnemyChoice.dir = -1;
	if(!global.muted) audio_play_sound(death,10,false);
	x = ogX - 8;
	objEnemyChoiceL.x = objEnemyChoiceL.ogX - 8;
}
