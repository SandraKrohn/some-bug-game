// with (obj_cage) {
//	if (trigger_id == other.trigger_id) {
//		sprite_index = spr_cage_closed
//		mask_index = spr_cage_mask_closed
//	}
		
//		if (!instance_exists(obj_beetle_sad)) {
//			var bubble = instance_create_layer(x, y - 50, layer, obj_beetle_sad)
//			bubble.sprite_index = spr_beetle_sad
//		}
//}

// working code that lets the bubble disappear after a few seconds
with (obj_cage) {
	if (trigger_id == other.trigger_id && !has_closed) {
		sprite_index = spr_cage_closed
		mask_index = spr_cage_mask_closed
		audio_play_sound(snd_cage_door_close, 1, false)

		if (!has_bubble) {
			var bubble = instance_create_layer(x, y - 50, layer, obj_beetle_sad)
			bubble.sprite_index = spr_beetle_sad
			bubble.owner = id
			has_bubble = true
		}

		has_closed = true
	}
}