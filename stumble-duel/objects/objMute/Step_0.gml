if(position_meeting(mouse_x, mouse_y, id)){
	cursor = true;
} else cursor = false;



if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && visible){
	global.muted = !global.muted;
	if(global.muted){
		audio_sound_gain(objMaster.cheerS,0,0);
		audio_sound_gain(objMaster.songS,0,0)
		sprite_index = sprMuted;
	}
	else{
		audio_sound_gain(objMaster.cheerS,1,0);
		audio_sound_gain(objMaster.songS,1,0)
		sprite_index = sprNotMuted;
	}
}


if(global.muted){
	audio_sound_gain(objMaster.cheerS,0,0);
	audio_sound_gain(objMaster.songS,0,0);
	sprite_index = sprMuted;
	
}