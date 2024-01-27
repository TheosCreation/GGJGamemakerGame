
if(m_CurrentTooth== m_MouthSize){
	m_CurrentTooth = 0;
	m_GameStart = false;
}
else{
m_CurrentTooth++;
alarm[0] = m_LineSpeed;
show_debug_message(m_CurrentTooth);
}