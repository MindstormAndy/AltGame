draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y - 64, by);
draw_text(x, y - 32, name1);
draw_text(x, y, name2);
draw_text(x, y + 32, name3);
draw_text(x, y + 64, name4);

draw_set_halign(fa_left);
draw_set_valign(fa_top);