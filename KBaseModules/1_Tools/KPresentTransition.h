//
//  KPresentTransition.h
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KLoadManager.h"

NS_ASSUME_NONNULL_BEGIN

@class KPresentConfig;
@interface KPresentTransition : NSObject <UIViewControllerAnimatedTransitioning>

- (instancetype)initWithConfig:(void(^)(KPresentConfig *))config;

@end

@interface KPresentConfig : NSObject

/**
 0:left，1:bottom，2:right，3:top
 */
@property(nonatomic,  assign) int subType;

/**
 Animation type
 */
@property(nonatomic,  assign) KAnimationType animationType;

+ (instancetype)defaultConfig;

- (KPresentConfig *(^)(int sub_Type))sub_Type;

- (KPresentConfig *(^)(KAnimationType animation_Type))animation_Type;

@end

NS_ASSUME_NONNULL_END
