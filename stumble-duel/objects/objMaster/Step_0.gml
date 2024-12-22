// change cursor sprite depending on hover
if(!cursorHover && cursor_sprite != sprSwordCursor) cursor_sprite = sprSwordCursor;
if(cursorHover && cursor_sprite != sprHandCursor) cursor_sprite = sprHandCursor;

// wait 5 frames before letting user click things, chrome doesn't allow immediate sound effects
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