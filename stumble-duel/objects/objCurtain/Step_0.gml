/// @description Insert description here
// You can write your code in this editor
if(!waiting){
	y += (goal-y)/15;

	if(goal == 780 && y > 770){
		goal = -20;
	
		if(objMaster.gameOver){
			game_restart();//	
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
		
			//show_debug_message(string(objPlayerUpper.character) + ":" + string(objEnemyUpper.character));
	
		
		
			objCrown.y = 151;
			objBack.visible = true;
			objPlayerHead.visible = true;
			objPlayerBar.visible = true;
			objEnemyBar.visible = true;
			objEnemyHead.visible = true;
			objMaster.frozen = false;
		}
	
		if(objMaster.deathReset != 0){
			if(objMaster.deathReset == 1){
				if(objEnemyUpper.size != 5) objEnemyUpper.size+=2;
				else{
				
					objCrown.y = 360;
					objMaster.frozen = true;
					objPlayerUpper.visible = false;
					objPlayerLower.visible = false;
					objWinner.fall = true;
				
				}
			}
			else{
				if(objPlayerUpper.size != 5) objPlayerUpper.size+=2;
				else{
					objCrown.y = 363;
					objMaster.frozen = true;
					objEnemyUpper.visible = false;
					objEnemyLower.visible = false;
					objWinner.fall = true;
				
				}
			}
	
			objEnemyUpper.reset();
			objPlayerUpper.reset();
			if(!objPlayerUpper.visible) objEnemyUpper.x = 640;
		
			if(!objEnemyUpper.visible) objPlayerUpper.x = 640;
			
			objMaster.deathReset = 0;
		}
	}
}