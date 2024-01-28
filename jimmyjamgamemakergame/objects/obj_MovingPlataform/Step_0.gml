
speed = m_speed;

if(x>=m_originalX+m_distance && !m_turned){
	m_speed*=-1;
	m_originalX = x;
	m_turned = true;
}
if(x<=m_originalX-m_distance && m_turned){
	m_speed*=-1;
	m_originalX = x;
	m_turned = false;
}
