# Phigros

该项目使用Gamemaker在电脑端大概还原了Phigros的游戏

目前可实现操作

| 命令名                                      | 翻译                                                         |
| ------------------------------------------- | ------------------------------------------------------------ |
| LineMake()                                  | 在屏幕中央生成一个角度为“0”的线，返回线的索引                |
| LineMove(lineID,x,y,time)                   | 移动lineID索引所指向的线在time帧内到x,y所表示的坐标处        |
| LineMoveX(lineID,x,time)                    | 同上，但只能移动x坐标                                        |
| LineMoveY(lineID,y,time)                    | 同上，但只能移动y坐标                                        |
| LineMoveAlpha(lineID,alpha,time)            | 让lineID索引所指向的线在time帧内到达所需的透明度(1为不透明，0为完全透明) |
| LineMoveAngle(lineID,angle,time)            | 同上，但此命令能移动线的角度（例如倾斜的线）                 |
| NoteMake(note_type,line_id,isDown,offset,s) | 创建一个note_type音符类型的音符，绑定到line_id索引所指向的线上。offset为音符在线上的相对位置。如果isDown等于1则音符向下走，反之亦然。note_type可选"red""yellow"和"blue"。该音符会在s秒后掉落到线上。 |

可能过两天会配置Hold键支持吧...

铺面在obj_playing的创建事件里写。