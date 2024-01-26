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

x+=m_velocityX;

if(keyboard_check(vk_space)){
 y-=64;	
}
if(place_meeting(x,y,m_tilemap)){
	m_velocityY = 0;
	show_debug_message("cum")
}
else{
	m_velocityY -= g_gravity;
}
y-= m_velocityY;
