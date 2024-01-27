
if(m_CurrentTooth== m_MouthSize-1){
	m_CurrentTooth = 0;
	m_GameStart = false;
	m_started = false;
	global.GamePause = false;

}
else{
m_CurrentTooth++;
alarm[0] = m_LineSpeed;
show_debug_message(m_CurrentTooth);
}