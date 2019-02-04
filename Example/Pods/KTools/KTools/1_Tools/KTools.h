//
//  KTools.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTools : NSObject

///获取KHealthTools这个Bundle的图片
+ (UIImage *)k_getToolsBundleImageWithImageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
