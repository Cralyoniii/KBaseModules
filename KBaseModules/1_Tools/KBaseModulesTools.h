//
//  KBaseModulesTools.h
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KBaseModulesTools : NSObject

///获取当前组件Bundle的图片
+ (UIImage *)k_getModulesBundleImageWithImageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
