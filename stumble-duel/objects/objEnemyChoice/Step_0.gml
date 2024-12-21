/// @description Insert description here
// You can write your code in this editor

//image_xscale += (goal - image_xscale)/20;
//image_yscale += (goal - image_yscale)/20;

if(position_meeting(mouse_x, mouse_y, id)){
	goal = 2.25;
}
else goal = 2;

if(x != ogX){
	shift -= 1.3;	
}
if(dir == 1)x += shift;
else x -= shift;

if((dir == 1 && x < ogX) || (dir == -1 && x > ogX)){
	x = ogX;
	shift = 0;
	dir = 0;
	
	objEnemyChoiceL.x = objEnemyChoiceL.ogX;
	objEnemyChoiceR.x = objEnemyChoiceR.ogX;
}