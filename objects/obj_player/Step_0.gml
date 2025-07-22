current_state()

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