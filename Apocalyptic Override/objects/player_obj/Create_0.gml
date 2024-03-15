// Create Event
alarm[0] = room_speed/3; // Change sprite every 2 seconds

// Initialize player health
maxHealth = 3; // The player can take 3 hits before dying
currentHealth = maxHealth;

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

