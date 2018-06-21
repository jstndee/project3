/// @description Insert description here
// You can write your code in this editor

if (hascontrol) 
{
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

key_dodge = keyboard_check_pressed(ord("Z"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
key_jump = keyboard_check_pressed(vk_space) or keyboard_check(ord("X"));  //this is so you can still jump when you press C to fire
key_dash = keyboard_check_pressed(ord("Z"));


if dash_action == 0 {
if keyboard_check(ord("Z")) {
dash_action = room_speed * 1.5 // 1.5 seconds cooldown
hsp += lengthdir_x(8, object12.image_angle)
vsp += lengthdir_y(8, object12.image_angle)   // Problem: the sp doesnt get put back down 
}
}
else {
dash_action -= 1 
}