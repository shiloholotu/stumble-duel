/// @description Insert description here
// You can write your code in this editor
y -= jump;

if(y >= floorY){
	jump = 0;
	y = floorY;
}

if(y == floorY){
	jump = random(10);
}

if(jump != 0) jump -= .75;