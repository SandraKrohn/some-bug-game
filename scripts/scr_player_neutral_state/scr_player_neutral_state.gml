function scr_player_neutral_state() {
	image_speed = 0
	vsp += grv
	
	// movement + mirroring sprite
	hsp = 0
	if (keyboard_check(vk_left)) {
		hsp = -3
		image_speed = 1
		image_xscale = -1
	}
	else if (keyboard_check(vk_right)) {
		hsp = 3
		image_speed = 1
		image_xscale = 1
	}
	
	// var makes a variable temporary = only for the scope / event -> more efficient (memory)
	var grounded = place_meeting(x, y + 1, obj_collision)
	
	// jumping - with sound :D
	if (keyboard_check_pressed(vk_space) && grounded) {
		vsp = jump_strength
		audio_play_sound(snd_jump, 1, false)
	}
	
	if (keyboard_check_pressed(vk_shift)) {
		current_state = scr_player_atk_state
		atk_timer = 0
	}
	
}


