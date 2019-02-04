//
//  NSString+KRegex.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (KRegex)

//正则相关
- (BOOL)k_isValidateByRegex:(NSString *)regex;
//邮箱
- (BOOL)k_isEmailAddress;
//身份证号
- (BOOL)k_simpleVerifyIdentityCardNum;
//url
- (BOOL)k_isValidUrl;

@end

NS_ASSUME_NONNULL_END
