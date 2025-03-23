if (debug){
	with (O_Regiment){
		
		draw_set_color(c_red);
		draw_rectangle(bbox_left,bbox_top, bbox_right, bbox_bottom, true)
		
		draw_set_color(c_green);
		draw_circle(x, y, chaseRadius, true);
		
		draw_set_color(c_olive);
		draw_circle(x, y, idleRadius, true);
		
	}
	with (O_TroupeBase){
		draw_set_color(c_red);
		draw_rectangle(bbox_left,bbox_top, bbox_right, bbox_bottom, true)
	}
	with (O_Bjorn){
		draw_set_color(c_red);
		draw_rectangle(bbox_left,bbox_top, bbox_right, bbox_bottom, true)
	}
}