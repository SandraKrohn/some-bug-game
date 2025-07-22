// should be in every child because this inherits everything
event_inherited()

has_bubble = false
has_closed = false

collider = instance_create_depth(x, y, depth, obj_cage_collider)

function get_hit() {
	// change sprite to broken (still to do)
	instance_destroy(collider)
}