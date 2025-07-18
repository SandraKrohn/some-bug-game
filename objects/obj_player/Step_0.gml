image_speed = 0

if (keyboard_check(vk_left)) {
	x -= 3
	image_speed = 1
	image_xscale = -1
}
else if (keyboard_check(vk_right)) {
	x += 3
	image_speed = 1
	image_xscale = 1
}

vsp += grv

// var makes a variable temporary = only for the scope / event -> more efficient (memory)
var grounded = place_meeting(x, y + 1, obj_collision)

if (keyboard_check_pressed(vk_space) && grounded) {
	vsp = jump_strength
}

// checks collision top and bottom
// (do the same thing for horizontal now (second loop; needs hsp variable))
repeat abs(vsp) {
	if !place_meeting(x, y + sign(vsp), obj_collision) {
		y += sign(vsp)
	}
	else {
		vsp = 0
	}
}