randomize();
m_MouthSize = 10;
m_TeethList = array_create(m_MouthSize,spr_teethNormal);
m_GameStart = false;
m_CurrentTooth = 0;
m_started = false;
m_LineSpeed = 10;
m_goldTeeth = 3;
m_gold = false;
m_parent = id;
m_goldCount = 0;

m_xOffset = -320;

m_teethGap = 64; 
m_TeethList[5] = spr_teethGolden;


// when game is playing it goes through each line in this array using an alarm
// if the player presses laugh button when the current state is correct they get point;