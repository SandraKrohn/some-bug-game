var player = instance_find(obj_player, 0)

if (player != noone) {
	// draw smaller version of sprite next to score
	var icon_x = 30
	var icon_y = 10
	var scale = 1
	draw_sprite_ext(spr_leaf, 0, icon_x, icon_y, scale, scale, 0, c_white, 1)
	
	// formatting and drawing score
	draw_set_font(fnt_score)
	draw_set_color(c_navy)
	var score_str = string_format(player.leaf_score + 1000, 4, 0)
	// + 15 = padding between sprite and score
	draw_text(icon_x + sprite_width * scale + 15, icon_y, string_copy(score_str, 2, 3))
}