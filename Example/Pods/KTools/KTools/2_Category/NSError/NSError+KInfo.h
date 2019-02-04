//
//  NSError+KInfo.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSError (KInfo)

//错误码
@property (nonatomic, assign) NSInteger errorCode;

//错误信息
@property (nonatomic,copy) NSString *errorMessage;

+(instancetype)k_errorWithMsg:(NSString*)msg;

@end

NS_ASSUME_NONNULL_END
