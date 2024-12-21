/// @description Insert description here
// You can write your code in this editor
x = objEnemyUpper.x;

if(objEnemyUpper.dir != 0) sprite_index = run;
else sprite_index = idle;

y += fall;

if(fall >= 1) fall += .5;