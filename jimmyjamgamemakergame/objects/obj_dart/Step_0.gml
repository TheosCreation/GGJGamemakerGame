
if((abs(obj_Dart.x - instance_nearest(x,y,obj_Baloon).x) < 500) && (abs(obj_Dart.y - instance_nearest(x,y,obj_Baloon).y) < 500)) {
	instance_nearest(x,y,obj_Baloon).m_pop = true;
}
