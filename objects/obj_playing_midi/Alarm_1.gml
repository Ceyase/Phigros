if(audio_exists(global.MusicID))audio_sound_set_track_position(global.MusicID,global.s)
//LineMoveAngle(line[1],random_range(-30,30),60,0)
//LineMoveAngle(line[2],random_range(-30,30),60,0)
LineMoveY(line[1],line[1].controlY + random(30),30,0)
LineMoveY(line[2],line[2].controlY + random(-30),30,0)
alarm[1] = 60