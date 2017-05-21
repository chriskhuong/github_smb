///get the weight of the enemy you're colliding with

var weight = physics_get_density(other.id);

show_debug_message("COLLIDING WITH: " + string(object_index) + " WEIGHT: " + string(weight));

with(creator)
    {
        friction = (weight * 10);
    }

