//
//  NSString+KBase64.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (KBase64)

/**
 *  Base64编码
 */
- (NSString *)k_base64EncodedString;

/**
 *  Base64解码
 */
- (NSString *)k_base64DecodedString;

@end

NS_ASSUME_NONNULL_END
