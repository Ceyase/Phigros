c2 = ds_list_find_value(e2,aa2)
//note[aa] = NoteMake("yellow",line[1],1,-600,(c[0]/96)*(60/170))
note[aa2] = NoteMake(choose("yellow","yellow","blue"),line[2],1,(c2[1]-60)*40-600,(c2[0]/96)*(60/100))
aa2+=1
alarm[3] = 10
if(aa2 == bb2)alarm[3] = -1