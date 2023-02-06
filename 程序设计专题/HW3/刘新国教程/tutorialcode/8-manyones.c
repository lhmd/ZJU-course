//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  最近修改：2020年3月25日 
//  初次创建：2018年3月，用于<<程序设计专题>>课程教学
//
//===========================================================================

/***************************************************************
 VisualStudio 2010 用户注意：
    将Character Set设置为 Use Multibyte Character Set
	否则中文显示不正常
***************************************************************/

#define Demo_ID 2

#if Demo_ID == 1
#include "manyones/house.c"

#elif Demo_ID == 2
#include "manyones/kochsnow.c"

#elif Demo_ID == 3
#include "manyones/igp.c"

#elif Demo_ID == 4
#include "manyones/igp_char.c"

#elif Demo_ID == 5
#include "manyones/igp_keyboard.c"

#elif Demo_ID == 6
include "manyones/igp_mouse.c"

#elif Demo_ID == 7
#include "manyones/igp_timer.c"

#elif Demo_ID == 8
#include "manyones/demoGuiButton.c"

#elif Demo_ID == 9
#include "manyones/demoGuiMenu.c"

#elif Demo_ID == 10
#include "manyones/demoGuiTextInput.c"

#elif Demo_ID == 11
#include "manyones/demoGuiRotate.c"

#elif Demo_ID == 12
#include "manyones/CAD.c" 


#endif 
