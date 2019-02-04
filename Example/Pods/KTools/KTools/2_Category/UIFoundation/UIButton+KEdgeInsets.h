//
//  UIButton+KEdgeInsets.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, KButtonEdgeInsetsStyle) {
    KButtonEdgeInsetsStyleImageLeft,
    KButtonEdgeInsetsStyleImageRight,
    KButtonEdgeInsetsStyleImageTop,
    KButtonEdgeInsetsStyleImageBottom
};

@interface UIButton (KEdgeInsets)

/**
 重新调整btn的image和title的位置

 @param style 风格
 @param space title和image的距离
 */
- (void)k_layoutButtonWithEdgeInsetsStyle:(KButtonEdgeInsetsStyle)style imageTitlespace:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
