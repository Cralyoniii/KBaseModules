//
//  KPresentTransition.m
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "KPresentTransition.h"

@interface KPresentTransition ()

@property(nonatomic, assign) int subtype;

@property(nonatomic, assign) KAnimationType animationType;

@end

@implementation KPresentTransition

- (instancetype)initWithConfig:(void (^)(KPresentConfig *))config {
    self = [super init];
    if(self){
        if(config){
            KPresentConfig *configure = [[KPresentConfig alloc]init];
            config(configure);
            _subtype = configure.subType;
            _animationType = configure.animationType;
        }
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.7;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    //    UIViewController * fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController * toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    //    CGRect initalFrame = [transitionContext initialFrameForViewController:fromVC];
    //    toVC.view.frame = initalFrame;
    //    fromVC.view.frame = initalFrame;
    UIView * container = [transitionContext containerView];
    //
    [container addSubview:toVC.view];
    //    [container bringSubviewToFront:fromVC.view];
    NSString *subtypeString;
    
    switch (_subtype) {
        case 0:
            subtypeString = kCATransitionFromLeft;
            break;
        case 1:
            subtypeString = kCATransitionFromBottom;
            break;
        case 2:
            subtypeString = kCATransitionFromRight;
            break;
        case 3:
            subtypeString = kCATransitionFromTop;
            break;
        default:
            break;
    }
    [KLoad transitionWithType:_animationType WithSubtype:subtypeString ForView:container withComplete:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
    
}

@end

@implementation KPresentConfig

+ (instancetype)defaultConfig {
    KPresentConfig *config = [[KPresentConfig alloc]init];
    config.subType = 0;
    config.animationType = Cube;
    return config;
}
- (KPresentConfig *(^)(int))sub_Type {
    return ^KPresentConfig*(int sub_Type) {
        self.subType = sub_Type;
        return self;
    };
}
- (KPresentConfig *(^)(KAnimationType))animation_Type {
    return ^KPresentConfig*(KAnimationType animation_Type) {
        self.animationType = animation_Type;
        return self;
    };
}
@end
