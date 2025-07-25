// should be in every child because this inherits everything
event_inherited()

has_bubble = false
has_closed = false

collider = instance_create_depth(x, y, depth, obj_cage_collider)
trigger = instance_create_depth(x + 27, y - 15, depth, obj_cage_trigger)
trigger.image_xscale = 0.0625
trigger.image_yscale = 0.65625
trigger.owner = id

function get_hit() {
	sprite_index = spr_cage_broken
	instance_destroy(collider)
	instance_destroy(trigger)
	instance_create_depth(x, y, depth, obj_cage_break)
}