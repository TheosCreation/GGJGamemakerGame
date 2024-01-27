/// @description Insert description here
// You can write your code in this editor



if(m_GameStart){
	
	draw_sprite_ext(spr_tetxbox,0,view_wport[0]/4-216,view_hport[0]/4-100,1,2.6,0,c_white,1)
	for(i = -m_MouthSize/2; i< m_MouthSize/2; i++){

		draw_sprite(m_TeethList[i+m_MouthSize/2],0,view_wport[0]/4+(i*64)+320,view_hport[0]/4+(-abs(i)*24)+128);	
		draw_sprite_ext(m_TeethList[i+m_MouthSize/2],0,view_wport[0]/4+(i*64)+384,view_hport[0]/4+256+(-abs(i)*24)+128,1,1,180,c_white,1);	
	}
	draw_sprite(spr_scrollBar,0,view_wport[0]/4+m_CurrentTooth*64-130,view_hport[0]/4-100);
}
