depth = -9999

if(instance_number(object_index) > 1) instance_destroy(); 
// Speeds
hurryup = 0
walk_speed = 1.4;
run_speed = 3.1;
move_speed = 0;
grav = 0.18;
jump_speed = -5;
jumpbuf = 0;

move = 0;

camoffset = 0;
drawtxt = false;

// States
is_jumping = true;
jump_initiated = false;
is_dead = false;

horbuttonind = [vk_left, undefined, vk_right]

airstreak = 0;
airstreakpoints = [100, 200, 400, 500, 800, 1000, 2000, 4000, 5000, 8000, -1]

// Sprites
spr_idle = spr_mario_idle;
spr_walk = spr_mario_run;
spr_jump = spr_mario_jump;
spr_dead = spr_mario_die;
spr_brake = spr_mario_turn;
spr_crouch = spr_bigmario_crouch


// Initialize physics
hsp = 0;
vsp = 0;

frict = .06;
accel = .04;

frozen = false;
movefrozen = false;

target_door = "A"
target_room = -1

pipe = noone

ignorecollision = false

invisframes = 0;

uninterruptedmewingstreak = 0;

mask_index = spr_mario_mask

if(global.music == -1)
{
	global.music = audio_play_sound(overworld_theme, 1000, true)
}
big = false

palarray = []

if(global.luigi)
{
	palarray = [ [ [ 181,49,32 ],[ 255,254,255 ] ],[ [ 234,158,34 ],[ 234,158,34 ] ],[ [ 107,109,0 ],[ 56,135,0 ] ] ] 
}
else
{
	palarray = [ [ [ 181,49,32 ],[ 181,49,32 ] ],[ [ 234,158,34 ],[ 234,158,34 ] ],[ [ 107,109,0 ],[ 107,109,0 ] ] ] 
}