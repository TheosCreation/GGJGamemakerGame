if((abs(x - obj_player.x) < 1280) && (abs(x - obj_player.x) < 1280)){

	if(!m_GameStart){
		m_GameStart = true;
		global.GamePause = true;
	}
}
if(m_GameStart&&!m_started){
	m_started = true;
	m_CurrentTooth = 0;
	alarm[0] = m_LineSpeed;
}

show_debug_message(m_goldCount);
if(m_GameStart){
	if(keyboard_check_pressed(ord("E"))&&m_CurrentTooth<=m_MouthSize){
		if(m_TeethList[m_CurrentTooth] = spr_teethNormal){
			m_CurrentTooth = m_MouthSize-1;
			m_GameStart = false;
			m_started = false;
			global.GamePause = false;
			m_gold = false;
			m_goldCount = 0;
			m_CurrentTooth = 0;
			m_parent.m_gameStage = 0;
			instance_destroy();
			die();
			
		}
		else{
			m_gold = false;
			
		}
	
	}
}