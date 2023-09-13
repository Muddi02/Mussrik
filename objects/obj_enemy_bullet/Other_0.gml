// Create the explosion effect at the banana's position
instance_create_layer(x, y, "Instances", obj_explosion); 

// Destroy the banana
instance_destroy();
