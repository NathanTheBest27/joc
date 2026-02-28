var _hor = keyboard_check(ord("D")) -  keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) -  keyboard_check(ord("W"));

move_and_collide( _hor * movement_speed, _ver * movement_speed, tilemap);

if (_ver != 0 or _hor != 0)	
{
	if(_ver > 0) sprite_index = OPlayerFace;
	else if(_ver < 0) sprite_index = OPlayerBehind;
	else if(_hor > 0) sprite_index = Oplayerright;
	else if(_hor < 0) sprite_index = OPlayerleft;
	
	facing = point_direction(0, 0, _hor, _ver);
}
else
{  if(sprite_index == Oplayerright) sprite_index  = Oplayerright_1;
	 else if(sprite_index == OPlayerleft) sprite_index  = OPlayerleft_1;
	 else if(sprite_index ==OPlayerFace) sprite_index  = OPlayerFace_1;
	  else if(sprite_index == OPlayerBehind) sprite_index  =OPlayerBehind_1;
}
if (keyboard_check_pressed(vk_space))
{
 var _inst =	instance_create_depth(x, y, depth, Attack);
 _inst.image_angle  = facing;
 _inst.damage *= damage;
 
}