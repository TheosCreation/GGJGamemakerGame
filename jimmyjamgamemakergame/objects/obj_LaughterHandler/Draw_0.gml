draw_self();
if(m_GameStart){
	for(i = 0; i< m_MouthSize; i++){
		draw_sprite(m_TeethList[i],0,x+(i*320),y);	
	}
}