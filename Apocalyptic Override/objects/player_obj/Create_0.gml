// Defines different player states
enum PlayerState {
    Idle,
    Attacking,
    SpecialAttacking,
    Dying
}

// Sets initial state
state = PlayerState.Idle;

// Initialize cooldowns for attacks
attackCooldown = 0;
specialAttackCooldown = 0;

// Initialize movement variables
charspeed_x = 0;
charspeed_y = 0;
max_speed = 6; // Set your desired maximum speed
acceleration = 2;
deceleration = 2;



