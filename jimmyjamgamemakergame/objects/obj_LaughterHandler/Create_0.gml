m_MouthSize = 15;
m_TeethList = array_create(m_MouthSize,spr_teethNormal);
m_GameStart = false;
m_CurrentTooth = 0;
m_started = false;
m_LineSpeed = 60;
for(i = 0; i<3; i++){
	m_TeethList[random_range(0,15)] = spr_teethGolden;
}
// when game is playing it goes through each line in this array using an alarm
// if the player presses laugh button when the current state is correct they get point;