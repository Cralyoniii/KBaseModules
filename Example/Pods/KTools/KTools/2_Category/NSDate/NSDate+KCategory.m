//
//  NSDate+KCategory.m
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "NSDate+KCategory.h"

@implementation NSDate (KCategory)

+ (NSTimeInterval)k_timerInterverByDate1:(NSString*)dateString1 date2:(NSString*)dateString2 {
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *dt1 = [df dateFromString:dateString1];
    NSDate *dt2 = [df dateFromString:dateString2];
    NSTimeInterval interver = [dt2 timeIntervalSinceDate:dt1];
    return interver;
    
}

+ (NSTimeInterval)k_timerInterverNowFromDate:(NSString*)dateString {
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *dt1 = [df dateFromString:dateString];
    NSDate *dt2 = [NSDate date];
    NSTimeInterval interver = [dt2 timeIntervalSinceDate:dt1];
    return interver;
    
}

+(int)k_compareWithDate1:(NSString*)dateString1 date2:(NSString*)dateString2 {
    
    int ci;
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *dt1 = [df dateFromString:dateString1];
    NSDate *dt2 = [df dateFromString:dateString2];
    NSComparisonResult result = [dt1 compare:dt2];
    switch (result)
    {
            // date1比date2大
        case NSOrderedAscending:
            ci = 1;
            break;
            //date1比date2小
        case NSOrderedDescending:
            ci = -1
            ;break;
            //date1=date2
        case NSOrderedSame:
            ci=0;
            break;
        default:
            break;
    }
    return ci;
    
}

- (BOOL)k_isToday {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitDay | NSCalendarUnitMonth |  NSCalendarUnitYear;
    // 1.获得当前时间的年月日
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    // 2.获得self的年月日
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    return
    (selfCmps.year == nowCmps.year) &&
    (selfCmps.month == nowCmps.month) &&
    (selfCmps.day == nowCmps.day);
    
}

- (BOOL)k_isYesterday {
    
    NSDate *nowDate = [[NSDate date] k_dateWithYMD];
    NSDate *selfDate = [self k_dateWithYMD];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmps = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowDate options:0];
    return cmps.day <= 1;
    
}

- (BOOL)k_isbeyoundYesterday {
    NSDate *nowDate = [[NSDate date] k_dateWithYMD];
    NSDate *selfDate = [self k_dateWithYMD];
    // 获得nowDate和selfDate的差距
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmps = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowDate options:0];
    return cmps.day == 2;
    
}

- (BOOL)k_isThisMonth {
    
    NSDate *nowDate = [[NSDate date] k_dateWithYMD];
    NSDate *selfDate = [self k_dateWithYMD];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmps = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowDate options:0];
    return cmps.day <= 30;
    
}

- (NSDate *)k_dateWithYMD {
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    NSString *selfStr = [fmt stringFromDate:self];
    return [fmt dateFromString:selfStr];
    
}

- (BOOL)k_isThisYear {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitYear;
    // 1.获得当前时间的年月日
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    // 2.获得self的年月日
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    return nowCmps.year == selfCmps.year;
    
}

- (NSDateComponents *)k_deltaWithNow {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    return [calendar components:unit fromDate:self toDate:[NSDate date] options:0];
    
}

@end
