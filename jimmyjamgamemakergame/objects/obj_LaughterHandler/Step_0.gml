if(place_meeting(x,y,obj_player)){
	if(keyboard_check_pressed(ord("E"))){
		m_GameStart = true;

	}
}
if(m_GameStart&&!m_started){
	m_started = true;
	m_CurrentTooth = 0;
	alarm[0] = m_LineSpeed;
}

if(m_GameStart){
	if(keyboard_check_pressed(vk_space)){
		if(m_TeethList[m_CurrentTooth] = spr_teethNormal){
			show_debug_message("ANGY");
		}
		else{
			show_debug_message("YIPEE");
		}
	
	}
}