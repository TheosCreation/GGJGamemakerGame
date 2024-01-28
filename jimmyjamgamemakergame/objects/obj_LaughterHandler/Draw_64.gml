/// @description Insert description here
// You can write your code in this editor



if(m_GameStart){
	
	//draw_sprite_ext(spr_tetxbox,0,view_wport[0]/4-216,view_hport[0]/4-100,1,2.6,0,c_white,1)
	if(m_parent.sprite_index == spr_uncleClown){
	draw_sprite(spr_krunkleTeeth,0,view_wport[0]/2,view_hport[0]/2);
	
	}
	else{
	draw_sprite(spr_blackteeth,0,view_wport[0]/2,view_hport[0]/2);
	}
	draw_sprite(spr_scrollBar,0,(view_wport[0]/2)+m_xOffset,view_hport[0]/2);
}
