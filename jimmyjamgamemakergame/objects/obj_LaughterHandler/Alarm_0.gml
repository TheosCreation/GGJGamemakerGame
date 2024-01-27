
if(m_CurrentTooth== m_MouthSize-1){
	m_CurrentTooth = 0;
	m_GameStart = false;
	m_started = false;
	global.GamePause = false;
	instance_nearest(x,y,obj_uncleClown).m_gameStage = 0;
	instance_destroy();
}
else{
m_CurrentTooth++;
if(m_gold){
	die();
	m_CurrentTooth = m_MouthSize-1;

	
}
if(m_TeethList[m_CurrentTooth] = spr_teethGolden){
	m_gold = true;
}
alarm[0] = m_LineSpeed;

}