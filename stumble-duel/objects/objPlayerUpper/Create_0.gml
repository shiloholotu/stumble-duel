/// @description Insert description here
// You can write your code in this editor
ogX = x;
ogY = y;
dir = 0;
push = 0;
jump = 13;
scale = 2;
rChange = 0;
size = 1;
dead = false;
stiffness = .01; // how quickly the player snaps back to upright

function reset(){
	x = ogX;
	y = ogY;
	dir = 0;
	push = 0;
	jump = 13;
	scale = 2;
	rChange = 0;
	dead = false;
	image_angle = 0;
	objPlayerLower.fall = 0;
	objPlayerLower.y = objPlayerLower.ogY;
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
	[sprRandom1, sprAstro3, sprAstro5, sprAstroHeadS],
	[sprRandomLegs, sprAstroLegs1],
]
function update(){
	if(size == 1){
		sprite_index = sprites[character*2][0];
		objPlayerBar.sprite_index = sprBar1;
	}
	else if(size == 3){
		sprite_index = sprites[character*2][1];
		objPlayerBar.sprite_index = sprBar2;
	}
	else{
		sprite_index = sprites[character*2][2];
		objPlayerBar.sprite_index = sprBar3;
	}
	
	objPlayerLower.idle = sprites[character*2+1][0];
	objPlayerLower.run = sprites[character*2+1][1];
	objPlayerHead.sprite_index = sprites[character*2][3];
}

update();