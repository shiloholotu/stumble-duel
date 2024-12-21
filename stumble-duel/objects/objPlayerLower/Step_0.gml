/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//dir = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
x = objPlayerUpper.x;

if(objPlayerUpper.dir != 0 || objPlayerUpper.dead){
	sprite_index = run;
}
else sprite_index = idle;

y += fall;
if(fall >= 1) fall+=.5;