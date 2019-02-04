//
//  NSString+KRegex.m
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "NSString+KRegex.h"

@implementation NSString (KRegex)

- (BOOL)k_isValidateByRegex:(NSString *)regex {
    
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
    
}

//邮箱
- (BOOL)k_isEmailAddress {
    
    NSString *emailRegex = @"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    return [self k_isValidateByRegex:emailRegex];
    
}

//身份证号
- (BOOL)k_simpleVerifyIdentityCardNum {
    
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    return [self k_isValidateByRegex:regex2];
    
}

//url
- (BOOL)k_isValidUrl {
    
    NSString *regex = @"^((http)|(https))+:[^\\s]+\\.[^\\s]*$";
    return [self k_isValidateByRegex:regex];
    
}

@end
