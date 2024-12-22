
if(!waiting){
	y += (goal-y)/15;

	if(goal == 780 && y > 770){
		goal = -20;
	
		if(objMaster.gameOver){
			game_restart();	
		}
	
		if(objMaster.frozen){
			objStart.visible = false;
			obj2P.visible = false;
			objPlayerChoice.visible = false;
			objPlayerChoiceL.visible = false;
			objPlayerChoiceR.visible = false;
			objEnemyChoice.visible = false;
			objEnemyChoiceL.visible = false;
			objEnemyChoiceR.visible = false;
			objLogo.visible = false;
		
		
			var sprites = [sprKnightBox, sprNerdHeadS, sprElfHeadS, sprAstroHeadS, sprRandomHeadSR];

			
			// choose a random character if the player choose the "random" option
			while(objEnemyUpper.character == 4){
				cur = irandom(4);
				objEnemyUpper.character = cur;
				objEnemyUpper.update();

			}
		
			while(objPlayerUpper.character == 4){
				cur = irandom(4);
				objPlayerUpper.character = cur;
				objPlayerUpper.update();
			}
		

	
			// reveal duel GUI
		
			objCrown.y = 151;
			objBack.visible = true;
			objPlayerHead.visible = true;
			objPlayerBar.visible = true;
			objEnemyBar.visible = true;
			objEnemyHead.visible = true;
			objMaster.frozen = false;
		}
	
		// if someone has died
		if(objMaster.deathReset != 0){
			// if player 1 died
			if(objMaster.deathReset == 1){
				// make player 2 bigger if not already max size
				if(objEnemyUpper.size != 5) objEnemyUpper.size+=2;
				else{ // player 2 wins
				
					objCrown.y = 360;
					objMaster.frozen = true;
					objPlayerUpper.visible = false;
					objPlayerLower.visible = false;
					objWinner.fall = true;
				
				}
			}
			//if player 2 died
			else{
				// maker player 1 bigger if not already max size
				if(objPlayerUpper.size != 5) objPlayerUpper.size+=2;
				else{ // player 1 wins
					objCrown.y = 363;
					objMaster.frozen = true;
					objEnemyUpper.visible = false;
					objEnemyLower.visible = false;
					objWinner.fall = true;
				
				}
			}
			
			// put everyone back in their starting positions
	
			objEnemyUpper.reset();
			objPlayerUpper.reset();
			if(!objPlayerUpper.visible) objEnemyUpper.x = 640;
		
			if(!objEnemyUpper.visible) objPlayerUpper.x = 640;
			
			objMaster.deathReset = 0;
		}
	}
}