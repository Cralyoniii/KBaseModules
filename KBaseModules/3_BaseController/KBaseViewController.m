//
//  KBaseViewController.m
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "KBaseViewController.h"

@interface KBaseViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation KBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inType = 2;
    self.outType = 0;
    [self setupSubView];
}

- (void)setupSubView {
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)presentToVC:(UIViewController *)vc {
    vc.transitioningDelegate  = self;
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark--present delegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [[KPresentTransition alloc] initWithConfig:^(KPresentConfig *config) {
        config.sub_Type(self.inType);
        config.animation_Type(Cube);
    }];
}
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return [[KPresentTransition alloc] initWithConfig:^(KPresentConfig *config) {
        config.sub_Type(self.outType);
        config.animation_Type(Cube);
    }];
}

@end
