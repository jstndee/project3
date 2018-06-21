/// @description Set Up Camera

cam = view_camera[0];
follow = oPlayer;        // change oPlayer to follow different stuff
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;


mountainlayer = layer_get_id("Mountains");  
treelayer = layer_get_id("Trees");  