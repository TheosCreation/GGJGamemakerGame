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
if(m_stopping&&(-10< m_velocityX && m_velocityX<10)){
	m_velocityX = 0;
}

//
if(keyboard_check_pressed(vk_space)){
	m_velocityY += 256;
 
} 
else if(tilemap_get_at_pixel(m_tilemap,x,y+1280-m_velocityY)){
	var tY = tilemap_get_cell_y_at_pixel(m_tilemap,x,y+1280-m_velocityY);
	y = (tY*640)-1280;
	m_velocityY = 0;
	
}

else{
	
	m_velocityY -= g_gravity;
}

x += m_velocityX;
y -= m_velocityY;


