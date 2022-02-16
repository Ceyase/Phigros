

c = ds_list_find_value(e,aa)
//note[aa] = NoteMake("yellow",line[1],1,-600,(c[0]/96)*(60/170))
note[aa] = NoteMake("red",line[1],0,(c[1]-10)*10-600,((c[0])/96)*(60/100))
aa+=1
alarm[0] = 10
if(aa == bb)alarm[0] = -1