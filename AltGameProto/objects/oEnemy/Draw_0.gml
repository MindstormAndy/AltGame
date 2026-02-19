draw_self()
if (xdir != 0)
{
	draw_rectangle(x, y + sightwidth, x + sightrange * xdir, y - sightwidth, true);
}
else if (ydir != 0)
{
	draw_rectangle(x + sightwidth, y, x - sightwidth, y + sightrange * ydir, true);
}

