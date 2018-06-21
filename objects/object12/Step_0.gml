/// @description Insert description here
// You can write your code in this editor


key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);


x = object11.x;
y = object11.y;

//Aiming with arrow keys
var hmove = key_right - key_left;
var vmove = key_down - key_up;

if hmove == 0 and vmove == 0 {
    image_angle = 90 - sign(object11.image_xscale) *90;  
} else {
    image_angle = point_direction(0, 0, hmove, vmove);
}