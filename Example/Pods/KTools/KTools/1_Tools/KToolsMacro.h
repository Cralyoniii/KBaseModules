//
//  KToolsMacro.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#ifndef KToolsMacro_h
#define KToolsMacro_h

#ifdef DEBUG
///打印日志
#define KLOG(XX,...) NSLog(@"%s(%d): " XX,__PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define KHLog(...)
#endif

///block引用循环解决方案
#define Weak(o) __weak typeof(o) weakSelf = o;

#define KScreenWidth           [UIScreen mainScreen].bounds.size.width
#define KScreenHeight            [UIScreen mainScreen].bounds.size.height

///颜色
#define HEX_COLOR(x_RGB) [UIColor colorWithRed:((float)((x_RGB & 0xFF0000) >> 16))/255.0 green:((float)((x_RGB & 0xFF00) >> 8))/255.0 blue:((float)(x_RGB & 0xFF))/255.0 alpha:1.0f]

#define RGBACOLOR(r,g,b,a)      [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#endif /* KToolsMacro_h */
