if(sprite_index = spr_mario_grow)
{
	big = true
	frozen = false
	sprite_index = spr_bigmario_idle
}
if(sprite_index = spr_mario_shrink)
{
	big = false
	frozen = false
	sprite_index = spr_mario_idle
	obj_player.invisframes = 15;
}