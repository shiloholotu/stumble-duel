/// @description Insert description here
// You can write your code in this editor
image_xscale = -2;
ogX = x;
ogY = y;
rChange = 0;
dir = 0;
dirGoal = -1.5;
push = 0;
size = 1;
dead = false;
jump = 13;
stiffness = .01;

function reset(){
	x = ogX;
	y = ogY;
	dir = 0;
	push = 0;
	jump = 13;
	rChange = 0;
	dead = false;
	image_angle = 0;
	
	objEnemyLower.fall = 0;
	objEnemyLower.y = objEnemyLower.ogY;
}

character = 4;
sprites = [
	[sprKnight1, sprKnight3, sprKnight5, sprKnightBox],
	[sprKnightLegs0, sprKnightLegs1],
	[sprNerd1, sprNerd3, sprNerd5, sprNerdHeadS],
	[sprNerdLegs0, sprNerdLegs1],
	[sprElf1, sprElf3, sprElf5, sprElfHeadS],
	[sprElfLegs0, sprElfLegs1],
	[sprAstro1, sprAstro3, sprAstro5, sprAstroHeadS],
	[sprAstroLegs0, sprAstroLegs1],
	[sprRandom1R, sprAstro3, sprAstro5, sprAstroHeadS],
	[sprRandomLegs, sprAstroLegs1],
]
function update(){
	if(size == 1){
		sprite_index = sprites[character*2][0];
		objEnemyBar.sprite_index = sprBar1;
	}
	else if(size == 3){
		sprite_index = sprites[character*2][1];
		objEnemyBar.sprite_index = sprBar2;
	}
	else{
		sprite_index = sprites[character*2][2];
		objEnemyBar.sprite_index = sprBar3;
	}
	
	objEnemyLower.idle = sprites[character*2+1][0];
	objEnemyLower.run = sprites[character*2+1][1];
	objEnemyHead.sprite_index = sprites[character*2][3];
}

update();