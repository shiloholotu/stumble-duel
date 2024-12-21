/// @description Insert description here
// You can write your code in this editor

if(variable_global_exists("played")){
	objMaster.songS = audio_play_sound(song,10,true);
	objMaster.cheerS = audio_play_sound(cheers,10,true);
	visible = false;
	objCurtain.waiting = false;
}
if(!variable_global_exists("muted")) global.muted = false;
global.played = 0;
goal = 2;
cursor = false;

cur = -2;
rChange = 0;

wait = 0;