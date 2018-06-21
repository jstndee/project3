// Get player input
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
//Calculate movement
var move = key_right - key_left; 

hsp = move * walksp;

vsp = vsp + grv;


if (place_meeting(x,y+1,oWall)) and (key_jump)
{
		vsp = -7;
	
}	
	
//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))              //sign gets - and + values, good for direction
	{
		x = x + sign(hsp);                          
	}
	hsp = 0;
}
x = x + hsp;

//Horizontal collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


//Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayer_Jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayer_run	
	}
	
}	

if (hsp != 0) image_xscale = sign(hsp);

//Makes player not able to move when shooting

if keyboard_check(ord("C"))
{
	hascontrol = false
}
else
{
	hascontrol = true
}

// Dodge

if dash_action == 0 {
if keyboard_check(ord("Z")) {
dash_action = room_speed * 1.5 // 1.5 seconds cooldown
hsp += lengthdir_x(8, oTestgun.image_angle)
vsp += lengthdir_y(8, oTestgun.image_angle)   // Problem: the sp doesnt get put back down 
grv = 0
}
}
else {
dash_action -= 1 
}
 


