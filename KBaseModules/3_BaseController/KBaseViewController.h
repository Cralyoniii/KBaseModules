//
//  KBaseViewController.h
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KBaseModulesContainerHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface KBaseViewController : UIViewController

- (void)setupSubView;

- (void)presentToVC:(UIViewController *)vc;

@property (nonatomic, assign) KAnimationType inType;

@property (nonatomic, assign) KAnimationType outType;

@end

NS_ASSUME_NONNULL_END
