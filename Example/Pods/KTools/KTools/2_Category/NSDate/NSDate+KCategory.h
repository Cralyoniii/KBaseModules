//
//  NSDate+KCategory.h
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (KCategory)

/**
 获取两个时间字符串的时间差
 
 @param dateString1 传入的时间字符串1
 @param dateString2 传入的时间字符串2
 @return 时间差
 */
+ (NSTimeInterval)k_timerInterverByDate1:(NSString*)dateString1 date2:(NSString*)dateString2;


/**
 获取传入时间字符串与当前时间的时间差

 @param dateString 传入的时间字符串
 @return 时间差
 */
+ (NSTimeInterval)k_timerInterverNowFromDate:(NSString*)dateString;

/**
 判断当前日期对象是否为今天

 @return <#return value description#>
 */
- (BOOL)k_isToday;

/**
 判断当前日期对象是否为昨天

 @return <#return value description#>
 */
- (BOOL)k_isYesterday;

/**
 判断当前日期对象是否为前天

 @return <#return value description#>
 */
- (BOOL)k_isbeyoundYesterday;

/**
 判断当前日期对象是否为这个月

 @return <#return value description#>
 */
- (BOOL)k_isThisMonth;

/**
 判断当前日期对象是否为今年

 @return <#return value description#>
 */
- (BOOL)k_isThisYear;

/**
 格式化输出年月日的时间

 @return <#return value description#>
 */
- (NSDate *)k_dateWithYMD;

/**
 *  获得与当前时间的差距
 */

/**
 判断当前日期对象与今天的差距

 @return <#return value description#>
 */
- (NSDateComponents *)k_deltaWithNow;

@end

NS_ASSUME_NONNULL_END
