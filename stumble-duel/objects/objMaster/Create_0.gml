gameOver = false;


deathReset = 0;
frozen = true;
twop = false;


function death(who){
	if(deathReset != 0) return;
	deathReset = who;
	objCurtain.goal = 780;
	
}

cursorHover = false;

cursor_sprite = sprSwordCursor;
window_set_cursor(cr_none);

wait = 0;