_mode = 0
//0是完美，1是失误

//tap蓝键，drag黄键，flick粉键

//粒子
image_xscale = 1
image_yscale = 1
switch(_mode){
	case 0:
		image_blend = make_color_rgb(240,230,140);
		break;
	case 1:
		image_blend = make_color_rgb(10,195,255);
		break;
}
part_system=part_system_create()//创建粒子系统
part=part_type_create()//创建粒子类型
part_type_shape(part,pt_shape_square)//设置粒子为正方形
part_type_size(part, 0.5, 0.5, 0, 0)//定义粒子大小
part_type_speed(part, 15, 20, -1, 0)//定义粒子速度
part_type_direction(part, 0, 360, 0, 0)//定义粒子运动方向
part_type_colour1(part,image_blend)
part_type_alpha2(part,1,0) //设置粒子消失
part_type_life(part,30,90)//定义粒子寿命
part_particles_create(part_system,x,y,part,random_range(4,10))
