
vspeed = m_speed;
if(y>=m_originalY+m_distance && !m_turned){
	m_speed*=-1;
	m_originalY = y;
	m_turned = true;
}
if(y<=m_originalY-m_distance && m_turned){
	m_speed*=-1;
	m_originalY = y;
	m_turned = false;
}
