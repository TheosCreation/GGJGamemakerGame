m_xOffset+=16;



if(m_xOffset%m_teethGap==0){
	if(m_CurrentTooth== m_MouthSize-1){
		if(m_goldCount>=m_goldTeeth){
		//win
	
			m_parent.m_win = true;
			global.GamePause = false;
			m_parent.m_gameStage = 2;
		
		}else{
			m_parent.m_gameStage = 0;
		}

	
		instance_destroy();

	}
	else{

	m_CurrentTooth++;
		if(m_gold){
			die();
			m_CurrentTooth = m_MouthSize-1;
			m_gold = false;
			m_goldCount = 0;
	
				m_CurrentTooth = 0;
			m_GameStart = false;
			m_started = false;
			global.GamePause = false;
			m_parent.m_gameStage = 0;
			instance_destroy();
	
		}
		if(m_TeethList[m_CurrentTooth] = spr_teethGolden){
			m_gold = true;
			m_goldCount++;
		}


	}
		
}
if(m_xOffset == 320){
		m_parent.m_win = true;
		instance_destroy();
		global.GamePause = false;
		m_parent.m_gameStage = 0;
}
alarm[0] = m_LineSpeed;