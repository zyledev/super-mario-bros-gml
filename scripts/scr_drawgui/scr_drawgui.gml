function scr_drawgui(){
	scr_palswap_set(palarray)
		draw_sprite(spr_topbar, 0, 0, 0)
		draw_set_font(global.font)
		draw_text(24, 16, plrname)
		draw_text(16, 24, global.scores[global.luigi] < 1000000 ? " " + scr_padstring(string(global.scores[global.luigi]), "0", 6) : string(global.scores[global.luigi]))
		draw_text(104, 24, global.coins > 9 ? string(global.coins) : "0" + string(global.coins)) 
		if(room != transition && room != titlescreen)
		{
			draw_set_halign(fa_right)
			var timertext = string(timer)
			if(real(timertext) >= 10 && real(timertext) < 100)
			{
				timertext = "0" + timertext
			} 
			else if (real(timertext) < 10)
			{
				timertext = "00" + timertext
			}
			draw_text(232, 24, timertext)
		}
		draw_set_halign(fa_center)
		draw_text(164, 24, string(global.world) + "-" + string(global.level))
		draw_set_halign(fa_left)
	shader_reset()
}