// Create Event
alarm[0] = room_speed/3; // Change sprite every 2 seconds

// Player Create Event
enum PlayerState {
    Idle,
    Running,
    Attacking,
    Dying
}

state = PlayerState.Idle;
attackCooldown = 0; // Cooldown period after an attack to prevent spamming
isDead = false; // A flag to indicate if the player is dead

