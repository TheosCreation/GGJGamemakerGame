
draw_sprite(spr_tetxbox, 0, view_wport[0]/8, view_hport[0]/16);
//draw text
draw_set_font(fnt_textboxtext);
if(charCount < string_length(Dialog[page])) {	
	charCount += 1;
}
DialogPage = string_copy(Dialog[page], 1, charCount);
draw_text(view_wport[0]/8 + 540 - (string_length(ClownName)*4),view_hport[0]/16 + 25,ClownName);
draw_text_ext(view_wport[0]/8 + 25,view_hport[0]/16 + 50, DialogPage, 25, 1000);