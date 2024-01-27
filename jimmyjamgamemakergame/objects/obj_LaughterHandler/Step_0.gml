if((abs(x - obj_player.x) < 500) && (abs(x - obj_player.x) < 500)){
	if(keyboard_check_pressed(ord("E"))){
		m_GameStart = true;
		global.GamePause = true;
	}
}
if(m_GameStart&&!m_started){
	m_started = true;
	m_CurrentTooth = 0;
	alarm[0] = m_LineSpeed;
}

if(m_GameStart){
	if(keyboard_check_pressed(vk_space)&&m_CurrentTooth<=m_MouthSize){
		if(m_TeethList[m_CurrentTooth] = spr_teethNormal){
			m_CurrentTooth = m_MouthSize-1;
			m_GameStart = false;
			m_started = false;
			global.GamePause = false;
			obj_uncleClown.m_gameStage = 0;
			die();
			instance_destroy();
		}
		else{
			m_gold = false;
			
		}
	
	}
}