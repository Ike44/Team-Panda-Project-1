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
attackCooldown = 0; // Cooldown period 
isDead = false; 

