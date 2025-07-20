image_speed = 0

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

vsp += grv

// var makes a variable temporary = only for the scope / event -> more efficient (memory)
var grounded = place_meeting(x, y + 1, obj_collision)

// jumping - with sound :D
if (keyboard_check_pressed(vk_space) && grounded) {
	vsp = jump_strength
	audio_play_sound(snd_jump, 1, false)
}

// checks collision top and bottom
repeat abs(vsp) {
	if !place_meeting(x, y + sign(vsp), obj_collision) {
		y += sign(vsp)
	}
	else {
		vsp = 0
	}
}

// checks collision left and right
repeat abs(hsp) {
	if !place_meeting(x + sign(hsp), y, obj_collision) {
		x += sign(hsp)
	}
	else {
		hsp = 0
	}
}