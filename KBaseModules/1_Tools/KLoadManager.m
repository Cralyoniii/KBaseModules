//
//  KLoadManager.m
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "KLoadManager.h"
#import "KBaseModulesContainerHeader.h"

static UIWindow *keywindow = nil;
static UIImageView *kload_image_view;

@implementation KLoadManager

+ (instancetype)shareInstance{
    static dispatch_once_t predicate;
    static KLoadManager *kload = nil;
    dispatch_once(&predicate, ^{
        if(kload == nil){
            kload = [[KLoadManager alloc]init];
            keywindow = [[UIApplication sharedApplication]keyWindow];
            kload_image_view = [[UIImageView alloc] init];
        }
    });
    return kload;
}

- (void)defaultLoading{
    
    if(!kload_image_view.animating) {
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity:5];
        for(int i = 0;i<5;i++) {
            [arr addObject:[KBaseModulesTools k_getModulesBundleImageWithImageName:[NSString stringWithFormat:@"dog%d",i]]];
        }
        kload_image_view.animationImages = arr;
        kload_image_view.animationDuration = 0.5;
        kload_image_view.animationRepeatCount = 100;
        [kload_image_view startAnimating];
        [keywindow addSubview:kload_image_view];
        [kload_image_view sizeToFit];
        kload_image_view.center  = keywindow.center;
    }
}

- (void)stopLoading {
    if(kload_image_view.animating) {
        [kload_image_view stopAnimating];
        [kload_image_view removeFromSuperview];
    }
}

#pragma CATransition动画实现
- (void) transitionWithType:(KAnimationType ) type WithSubtype:(NSString *) subtype ForView : (UIView *) view withComplete:(void (^)(BOOL))complemention {
    //创建CATransition对象
    CATransition *animation = [CATransition animation];
    
    //设置运动时间
    animation.duration = 0.7;
    switch (type) {
        case Fade:
            animation.type = kCATransitionFade;
            break;
        case Push:
            animation.type = kCATransitionPush;
            break;
            
        case Reveal:
            animation.type = kCATransitionReveal;
            break;
            
        case MoveIn:
            animation.type = kCATransitionMoveIn;
            break;
            
        case Cube:
            animation.type = @"cube";
            break;
            
        case SuckEffect:
            
            animation.type = @"suckEffect";
            break;
            
        case OglFlip:
            animation.type = @"oglFlip";
            break;
            
        case RippleEffect:
            animation.type = @"rippleEffect";
            break;
            
        case PageCurl:
            animation.type = @"pageCurl";
            break;
            
        case PageUnCurl:
            animation.type = @"pageUnCurl";
            break;
            
        case CameraIrisHollowOpen:
            animation.type = @"cameraIrisHollowOpen";
            break;
            
        case CameraIrisHollowClose:
            animation.type = @"cameraIrisHollowClose";
            break;
        default:
            animation.type = @"rippleEffect";
            break;
    }
    //设置运动type
    
    if (subtype != nil) {
        
        //设置子类
        animation.subtype = subtype;
    }
    
    //设置运动速度
    animation.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.6 :0.01 :0.13 :1.00];//UIViewAnimationOptionCurveEaseInOut;
    
    [UIView animateWithDuration:0.7 animations:^{
        [view.window.layer addAnimation:animation forKey:@"animation"];
    } completion:^(BOOL finished) {
        if(finished && complemention){
            complemention(finished);
        }
    }];
}



#pragma UIView实现动画
- (void) animationWithView : (UIView *)view WithAnimationTransitionType : (KAnimationType )type withComplete:(void (^)(BOOL))complemention {
    UIViewAnimationTransition transition;
    switch (type) {
        case CurlDown:
            transition = UIViewAnimationTransitionCurlDown;
            break;
        case CurlUp:
            transition = UIViewAnimationTransitionCurlUp;
            break;
        case FlipFromLeft:
            transition = UIViewAnimationTransitionFlipFromLeft;
            break;
        case FlipFromRight:
            transition = UIViewAnimationTransitionFlipFromRight;
            break;
        default:
            transition = UIViewAnimationTransitionCurlDown;
            break;
    }
    [UIView animateWithDuration:0.7 animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:transition forView:view cache:YES];
    } completion:^(BOOL finished) {
        if(complemention){
            complemention(finished);
        }
    }];
    
}

@end
