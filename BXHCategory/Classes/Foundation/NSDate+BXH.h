//
//  NSDate+BXH.h
//  AFNetworking
//
//  Created by yit on 2020/12/10.
//

typedef enum : NSUInteger {
    BXH_FromDateFormatYear = 0,
    BXH_FromDateFormatYearMonth,
    BXH_FromDateFormatYearMonthDay,
    BXH_FromDateFormatYearMonthDayTime,
} BXH_FromDateFormat;

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (BXH)
+ (NSString *)stringFromCurrentDate:(BXH_FromDateFormat)dateFormat;
@end

NS_ASSUME_NONNULL_END
