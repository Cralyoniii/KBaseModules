//
//  NSString+KBase64.m
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "NSString+KBase64.h"

@implementation NSString (KBase64)

- (NSString *)k_base64EncodedString {
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
    
}

- (NSString *)k_base64DecodedString {
    
    NSData *data = [[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    
}

@end
