function screen_fading(new_room, fade_out_rate, fade_in_rate)
{
	var ins = instance_create_depth(0, 0, 0, oFade);
	ins.transition_room = new_room;
	ins.fade_in_speed = fade_in_rate;
	ins.fade_out_speed = fade_out_rate;

}