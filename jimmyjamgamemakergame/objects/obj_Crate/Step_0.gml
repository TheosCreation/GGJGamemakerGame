
if(instance_nearest(x,y, obj_Baloon).m_pop = true) {
	//crate gravity activate
	m_gravity = 9.81;
}

if(tilemap_get_at_pixel(m_tilemap,x+m_width,y+m_height-m_velocityY)||tilemap_get_at_pixel(m_tilemap,x-m_width,y+m_height-m_velocityY)){
	var tY = tilemap_get_cell_y_at_pixel(m_tilemap,x,y+m_height-m_velocityY);
	y = (tY*640)-m_height;
	m_velocityY = 0;
	m_groundCheck = true;
}
else if(tilemap_get_at_pixel(m_tilemap,x,y-m_height/2+m_velocityY)){	
	
	var tY = tilemap_get_cell_y_at_pixel(m_tilemap,x,y+m_velocityY);
	y = (tY*640);
	m_velocityY = 0;
}
else{
	m_groundCheck = false;
	if(m_velocityY>-m_terminalVelY){
		m_velocityY -= m_gravity;
	}
	//gravity and checks if not on ground
}

y -= m_velocityY;