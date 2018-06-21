/// @description Insert description here
// You can write your code in this editor




key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);


x = oPlayer.x;
y = oPlayer.y;

//Aiming with arrow keys
var hmove = key_right - key_left;
var vmove = key_down - key_up;

if hmove == 0 and vmove == 0 {
    image_angle = 90 - sign(oPlayer.image_xscale) *90;  
} else {
    image_angle = point_direction(0, 0, hmove, vmove);
}



    
//Boolean values true and false are represened in GameMaker by the real values 1 and 0 respectively.
//So keyboard_check actually returns 1 if a key is held down and 0 otherwise.
//That's why you can do subtract boolean values from each other.
//This means that you just created new variables that will be deleted at the end of the code and won't interfere with other variables with the same name.
//point_direction(x1, y1, x2, y2) returns the direction from point (x1, y1) to (x2, y2) and returns 0 if both points are the same.


// Shooting
if keyboard_check_released(ord("C"))
{
	with (instance_create_layer(x,y,"bullets", oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction;
	}

}


	








