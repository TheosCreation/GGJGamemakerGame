if (mouse_check_button(mb_left)) {
	instance_create_layer(x, y, "Objects", obj_Dart);
	
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
if(tilemap_get_at_pixel(m_tilemap,x+c_width+m_velocityX,y+c_height/2)){
	
	var tX = tilemap_get_cell_x_at_pixel(m_tilemap,x+c_width+m_velocityX,y+c_height/2);
	x = (tX*640)-c_width;
	m_velocityX = 0;
}
else if(tilemap_get_at_pixel(m_tilemap,x-c_width+m_velocityX,y+c_height/2)){
	var tX = tilemap_get_cell_x_at_pixel(m_tilemap,x-c_width+m_velocityX,y+c_height/2);
	x = ((tX+1)*640)+c_width;
	m_velocityX = 0;
}
else if(m_stopping&&(-10< m_velocityX && m_velocityX<10)){
	m_velocityX = 0;
	//checks if velocity is in range -10 to 10 to fully 0 it
	
}


if(keyboard_check_pressed(vk_space)&&m_groundCheck){
	m_velocityY += m_jumpSpeed;
	//input check
 
} 
else if(tilemap_get_at_pixel(m_tilemap,x+c_width,y+c_height-m_velocityY)||tilemap_get_at_pixel(m_tilemap,x-c_width,y+c_height-m_velocityY)){
	var tY = tilemap_get_cell_y_at_pixel(m_tilemap,x,y+c_height-m_velocityY);
	y = (tY*640)-c_height;
	m_velocityY = 0;
	m_hitHead = false;
	m_groundCheck = true;
	//checks if player is on the ground and sets velocity accordingly, changes y pos so its smoothy
	
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
