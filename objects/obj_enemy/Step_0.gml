// Decrement the timer
fire_timer--;

if (fire_timer <= 0) {
    // Reset the timer
    fire_timer = irandom_range(1, 100);
    
    // Check if there are less than 5 bullets
    if (instance_number(obj_enemy_bullet) < 5) {
        // Create a bullet and fire it in a random direction
        var bullet = instance_create_layer(x, y, "Instances", obj_enemy_bullet);
        bullet.speed = 1;  // Adjust this value based on your game's requirements
        bullet.direction = irandom_range(0, 359);
    }
}

// Destroy the bullet if it goes outside the room boundaries
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
