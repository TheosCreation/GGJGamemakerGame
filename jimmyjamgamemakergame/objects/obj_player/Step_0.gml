if (mouse_check_button(mb_left) && m_canshoot) {
	m_canshoot = false;
	instance_create_layer(x, y+1000, "Objects", obj_Dart);
	alarm[0] = m_shootdelay;
}
if(keyboard_check_pressed(ord("E"))) {
	if(instance_exists(obj_textbox)) {
		if(obj_textbox.charCount < string_length(obj_textbox.Dialog[obj_textbox.page])) {
			obj_textbox.charCount = string_length(obj_textbox.Dialog[obj_textbox.page]);
		}
		else if(obj_textbox.page+1 < array_length(obj_textbox.Dialog)) {
			obj_textbox.page += 1;
			obj_textbox.charCount = 0;
		} else {
			instance_destroy(obj_textbox);
		}
	}
}

if(keyboard_check(ord("D"))&&m_velocityX < m_terminalVelX){
	m_velocityX+=m_moveSpeed;
	
	m_stopping= false;
}
else if(keyboard_check(ord("A"))&&m_velocityX > -m_terminalVelX){
	m_velocityX-=m_moveSpeed;
	m_stopping = false
}
else{
m_velocityX -= sign(m_velocityX)*m_moveSpeed;
m_stopping = true;

}
if(tilemap_get_at_pixel(m_tilemap,x+c_width+m_velocityX,y+c_height-320)||tilemap_get_at_pixel(m_tilemap,x+c_width+m_velocityX,y+320)){
	
	var tX = tilemap_get_cell_x_at_pixel(m_tilemap,x+c_width+m_velocityX,y+c_height/2);
	x = (tX*640)-c_width;
	m_velocityX = 0;
}
else if(tilemap_get_at_pixel(m_tilemap,x-c_width+m_velocityX,y+c_height-320)||tilemap_get_at_pixel(m_tilemap,x-c_width+m_velocityX,y+320)){
	var tX = tilemap_get_cell_x_at_pixel(m_tilemap,x-c_width+m_velocityX,y+c_height/2);
	x = ((tX+1)*640)+c_width;
	m_velocityX = 0;
}
else if(place_meeting(x+m_velocityX,y-160,obj_Crate)){
	m_velocityX = 0;
}
else if(m_stopping&&(-10< m_velocityX && m_velocityX<10)){
	m_velocityX = 0;
	//checks if velocity is in range -10 to 10 to fully 0 it
	
}
show_debug_message(y);

if(keyboard_check_pressed(vk_space)&&m_groundCheck){
	m_velocityY += m_jumpSpeed;
	//input check
 
} 
else if(tilemap_get_at_pixel(m_tilemap,x+c_width/2,y+c_height-m_velocityY)||tilemap_get_at_pixel(m_tilemap,x-c_width/2,y+c_height-m_velocityY)){
	var tY = tilemap_get_cell_y_at_pixel(m_tilemap,x,y+c_height-m_velocityY);
	y = (tY*640)-c_height;
	m_velocityY = 0;
	m_hitHead = false;
	m_groundCheck = true;
	//checks if player is on the ground and sets velocity accordingly, changes y pos so its smoothy
	
}
else if(place_meeting(x,y,obj_Crate)){
	m_velocityY = 0;
	m_groundCheck = true;
//	y = instance_nearest(x,y,obj_Crate).y-640-c_height;
}
else if(tilemap_get_at_pixel(m_tilemap,x,y-c_height/2+m_velocityY) && m_hitHead = false){	
	
	var tY = tilemap_get_cell_y_at_pixel(m_tilemap,x,y+m_velocityY);
	y = (tY*640);
	m_velocityY = 0;
	m_hitHead = true;
	//checks if p hits their head to stop them
	
}
else{
	m_groundCheck = false;
	if(m_velocityY>-m_terminalVelY){
		m_velocityY -= g_gravity;
	}
	//gravity and checks if not on ground
}

//updates pos based on vel
x += m_velocityX;
y -= m_velocityY;
