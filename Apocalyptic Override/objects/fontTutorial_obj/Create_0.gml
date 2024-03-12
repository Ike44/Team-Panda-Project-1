/// @description Insert description here
// You can write your code in this editor

myFont = titleFont; 

// Initialize animation variables
animating = false;   // Controls when the animation is playing
animation_progress = 0; // Tracks the progress of the animation
animation_speed = 0.1; // Controls how fast the animation plays


// Increment animation progress
if (animating) {
    animation_progress += animation_speed;
    if (animation_progress >= 1) {
        animating = false; // Reset the flag
        animation_progress = 0; // Reset the progress
        room_goto(Tutorial); // Change the room after the animation finishes
    }
}


