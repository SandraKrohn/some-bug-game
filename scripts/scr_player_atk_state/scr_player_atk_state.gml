function scr_player_atk_state() {
	hsp = 20 * image_xscale
	vsp = 0
	atk_timer++
	
	if atk_timer > atk_duration {
		atk_timer = 0
		current_state = scr_player_neutral_state
	}
	
	if place_meeting(x + 1 * image_xscale, y, par_hittable) {
		with instance_place(x + 1 * image_xscale, y, par_hittable) {
			get_hit()
		}
	}
}