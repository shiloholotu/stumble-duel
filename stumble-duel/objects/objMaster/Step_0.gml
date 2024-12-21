/// @description Insert description here
// You can write your code in this editor
if(!cursorHover && cursor_sprite != sprSwordCursor) cursor_sprite = sprSwordCursor;
if(cursorHover && cursor_sprite != sprHandCursor) cursor_sprite = sprHandCursor;

if(wait > 5){
	if(!objCurtain.waiting){
		if((objMute.cursor || objEnemyChoiceL.cursor|| objEnemyChoiceR.cursor || objPlayerChoiceL.cursor || objPlayerChoiceR.cursor || objStart.cursor || obj2P.cursor || objBack.cursor )) cursorHover = true;
		else cursorHover = false;
	}
	else{
		if(objPlay.cursor) cursorHover = true;
		else cursorHover = false;
	}
}
else wait++;