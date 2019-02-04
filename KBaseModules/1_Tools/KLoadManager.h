//
//  KLoadManager.h
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    Fade = 1,                   //淡入淡出
    Push,                       //推挤
    Reveal,                     //揭开
    MoveIn,                     //覆盖
    Cube,                       //立方体
    SuckEffect,                 //吮吸
    OglFlip,                    //翻转
    RippleEffect,               //波纹
    PageCurl,                   //翻页
    PageUnCurl,                 //反翻页
    CameraIrisHollowOpen,       //开镜头
    CameraIrisHollowClose,      //关镜头
    CurlDown,                   //下翻页
    CurlUp,                     //上翻页
    FlipFromLeft,               //左翻转
    FlipFromRight,              //右翻转
    
} KAnimationType;

#define KLoad [KLoadManager shareInstance]

@interface KLoadManager : NSObject

+ (instancetype)shareInstance;

- (void)defaultLoading;

- (void)stopLoading;

- (void) transitionWithType:(KAnimationType ) type WithSubtype:(NSString *) subtype ForView : (UIView *) view withComplete:(void (^)(BOOL finished))complemention;

- (void) animationWithView : (UIView *)view WithAnimationTransitionType : (KAnimationType )type withComplete:(void (^)(BOOL finished))complemention;

@end

NS_ASSUME_NONNULL_END
