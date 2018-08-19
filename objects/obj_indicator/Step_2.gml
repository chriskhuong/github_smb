/*var i;
for (i = 0; i < instance_number(obj_Player); i += 1)
   {
   players[i] = instance_find(obj_Player,i);
   if(players[i].playerNum == 1)
   {
	   dst = players[i]
	   go = true;
   }
  }
  */
var xMin, xMax, yMin, yMax;
xMin = global.view_x;
yMin = global.view_y;
xMax = global.view_x + obj_resolution.ideal_width;
yMax = global.view_y + obj_resolution.ideal_height;

go = true;
//if(go == true)
if (room != rm_characterSelect)
{
var sx, sy, tx, ty, dx, dy, mx, my, vx, vy, vl;
sx = src.x; sy = src.y // source position
//tx = dst.x; ty = dst.y // destination position
tx = creator.x; ty = creator.y;
dx = tx - sx; dy = ty - sy // difference
vl = sqrt(dx * dx + dy * dy) // distance
if (vl != 0) {
    vx = dx / vl; vy = dy / vl
} else {
    vx = 0; vy = 0;
}
if ((creator.x < xMin || creator.x > xMax) || (creator.y < yMin || creator.y > yMax)) {
    image_alpha = 1;
    on = true;
} else {
	/*
    image_alpha = max(0, (vl - inner) / inner)
    vl /= 2
	*/
	on = false;
	image_alpha = 0
}
pointDir = point_direction(sx, sy, tx, ty)
if (vy < 0) {
    vl = min(vl, ((global.view_y + pad) - sy) / vy)
} else if (vy > 0) {
    vl = min(vl, ((global.view_y + global.view_h - pad) - sy) / vy)
}
if (vx < 0) {
    vl = min(vl, ((global.view_x + pad) - sx) / vx)
} else if (vx > 0) {
    vl = min(vl, ((global.view_x + global.view_w - pad) - sx) / vx)
}
x = sx + vx * vl
y = sy + vy * vl
}
