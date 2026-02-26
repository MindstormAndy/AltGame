draw_self()
if (canseeplayer && !foundplayer) draw_sprite(sEnemyAlert, 0, x, y - 24)

// Use this code to see lines of sight
//if (xdir != 0)
//{
//	draw_rectangle(x, y + sightwidth, x + sightrange * xdir, y - sightwidth, true);
//}
//else if (ydir != 0)
//{
//	draw_rectangle(x + sightwidth, y, x - sightwidth, y + sightrange * ydir, true);
//}

