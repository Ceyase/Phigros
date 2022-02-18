global._line_color = c_white;
ANIM_Init()

LineInit();
alarm[0] = 10

/*
str=@"
原游戏：Phigros
该引擎作者：Ceyase
* 引擎制作起因 *
笑死，没啥起因，审核过不去就自己做咯（
该铺面仅为测试用途，软件自动生成
铺封来源网络，Sorry啦.

这个是可以玩的（

"
show_message(str)


以下代码提供PhiFormat支持
什么是PhiFormat?
这是Phigros原版，Phigros第三方制谱器乃至所有Phigros衍生作品都支持的铺面格式
这个项目如果不支持肯定不好（
*/
#macro HSL 384 //1 HSL 是屏幕较长边缘的一半长度。
#macro window_height HSL*2
#macro window_width HSL*2


global.musicOffset = 0 //音乐偏移(musicOffset)表示音乐开始后的时间长度。
global.timingbase = 48 //计时基数
//tick是从0开始的整数。
//0 tick是歌曲的开始（0 秒）。
//根据计时基数，每个节拍被分为给定数量的滴答声。
global.tick = 0
global.bpm = 120//BPM代表一分钟有多少节拍
 //一秒钟N个tick

room_height = window_height
room_width = window_width