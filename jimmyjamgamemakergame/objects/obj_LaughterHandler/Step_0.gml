if(place_meeting(x,y,obj_player)){
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
			m_CurrentTooth = 14;
			m_GameStart = false;
			m_started = false;
			global.GamePause = false;
			obj_player.x = global.checkpoint;
		}
		else{
			show_debug_message("YIPEE");
		}
	
	}
}