/// @description Insert description here
// You can write your code in this editor
cur = 4;

sprites = [sprKnightBox, sprNerdHeadS, sprElfHeadS, sprAstroHeadS, sprRandomHeadS];

function toggle(c){
	cur += c;
	if(cur == -1) cur = 4;
	if(cur == 5) cur = 0;
	
	prev = cur -1;
	if(prev == -1) prev =4;
	
	next = (cur + 1) % 5;
	
	objPlayerUpper.character = cur;
	objPlayerUpper.update();
	sprite_index = sprites[cur];
	
	objPlayerChoiceL.sprite_index = sprites[prev];
	objPlayerChoiceR.sprite_index = sprites[next];
}

goal = 2;

shift = 0;

ogX  = x;
dir = 0;