//
//  NSDate+Addition.m
//  IOS-Categories
//
//  Created by Jakey on 14/12/30.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import "NSDate+Addition.h"

@implementation NSDate (Addition)
+ (NSString *)currentDateStringWithFormat:(NSString *)format
{
    NSDate *chosenDate = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
    [formatter setTimeZone:localTimeZone];
    [formatter setDateFormat:format];
    NSString *date = [formatter stringFromDate:chosenDate];
    //[formatter dateFromString:date];
    return date;
}
- (NSString *)dateWithFormat:(NSString *)format
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
    [formatter setTimeZone:localTimeZone];
    NSString *date = [formatter stringFromDate:self];
    return date;
}
@end
