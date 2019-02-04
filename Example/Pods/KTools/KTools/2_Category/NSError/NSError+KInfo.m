//
//  NSError+KInfo.m
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "NSError+KInfo.h"

@implementation NSError (KInfo)

-(NSInteger)errorCode {
    
    if (self) {
        
        NSHTTPURLResponse* response = [self.userInfo objectForKey:@"com.alamofire.serialization.response.error.response"];
        
        if (response) {
            
            return [response statusCode];
        }
        
        return self.code;
    }
    
    return 0;
}

-(NSString *)errorMessage {
    
    NSInteger ResponeCode = self.errorCode;
    ///通用解析
    if (ResponeCode == 401){
        
        return @"权限已失效，请重新登录";
    }
    
    if (self.code == -1001) {
        
        return @"请求超时";
        
    }else if (self.code == -1009){
        
        return @"网络连接已断开";
        
    }
    
    return @"请求出错";
}

-(void)setErrorCode:(NSInteger)errorCode{}
-(void)setErrorMessage:(NSString *)errorMessage{}

+(instancetype)k_errorWithMsg:(NSString*)msg {
    
    NSError * error = [NSError errorWithDomain:NSCocoaErrorDomain code:-101 userInfo:@{NSLocalizedDescriptionKey:msg}];
    return error;
}

@end
