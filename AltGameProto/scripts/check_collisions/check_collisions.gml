function check_collisions(x1, y1, x2, y2){
	hitWall = collision_rectangle(x1, y1, x2, y2, tilemap, false, true);
	hitFurniture = collision_rectangle(x1, y1, x2, y2, oFurniture, false, true);
	return hitWall || hitFurniture;
}