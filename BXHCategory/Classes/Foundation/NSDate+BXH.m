//
//  NSDate+BXH.m
//  AFNetworking
//
//  Created by yit on 2020/12/10.
//

#import "NSDate+BXH.h"

@implementation NSDate (BXH)

+ (NSString *)stringFromCurrentDate:(BXH_FromDateFormat)dateFormat{
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    switch (dateFormat) {
        case BXH_FromDateFormatYear:
            fmt.dateFormat = @"yyyy";
            break;
        case BXH_FromDateFormatYearMonth:
            fmt.dateFormat = @"yyyy-MM";
            break;
        case BXH_FromDateFormatYearMonthDay:
            fmt.dateFormat = @"yyyy-MM-dd";
            break;
        case BXH_FromDateFormatYearMonthDayTime:
            fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
            break;
        default:
            fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
            break;
    }
    NSString *selfStr = [fmt stringFromDate:currentDate];
    return selfStr;
}

@end
