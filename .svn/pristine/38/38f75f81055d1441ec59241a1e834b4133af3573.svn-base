//
//  YXBUserDefaultsInfo.m
//  app
//
//  Created by kpkj-ios on 15/8/5.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBUserDefaultsInfo.h"
@implementation YXBUserDefaultsInfo
+ (BOOL)ATgetUserIsLogin
{
    NSString *islogin =  [[NSUserDefaults standardUserDefaults] objectForKey:@"uid"];
    if ([islogin isEqualToString:@"YES"]) {
        return YES;
    }else{
        return NO;
    }
}
+(void)YXBsaveUserId:(NSString *)uid{
    [[NSUserDefaults standardUserDefaults] setValue:uid forKey:@"uid"];
}
+(NSString *)YXBgetUserId{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"uid"];
}
+(void)YXBsaveUserName:(NSString *)userName{
    [[NSUserDefaults standardUserDefaults] setValue:userName forKey:@"username"];
}
+(NSString *)YXBgetUserName{
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"username"];
}
+(void)YXBsavePasswords:(NSString *)passwords{
    [[NSUserDefaults standardUserDefaults] setValue:passwords forKey:@"passwords"];
}
+(NSString *)YXBgetPasswords{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"passwords"];
}
+(void)YXBsaveUserIcon:(NSString *)imageName{
    [[NSUserDefaults standardUserDefaults] setValue:imageName forKey:@"imagename"];
}
+(NSString *)YXBgetIconImageName{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"imagename"];
}
+(void)YXBsaveUserSex:(NSString*)sex{
    [[NSUserDefaults standardUserDefaults] setValue:sex forKey:@"sex"];
}
+(NSString *)YXBgetUserSex{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"sex"];
}
+(void)YXBsaveIphoneNumber:(NSString *)phoneNumber{
    [[NSUserDefaults standardUserDefaults] setValue:phoneNumber forKey:@"phoneNumber"];
}
+(NSString *)YXBgetUserIphoneNumber{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"phoneNumber"];
}
+(BOOL) YXBisBlankString:(NSString *)string
{
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;

}
+ (UIColor *) YXBcolorWithHexString: (NSString *) stringToConvert
{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString]; //去掉前后空格换行符
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor redColor];
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor redColor];
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];  //扫描16进制到int
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];

}
+(BOOL)YXBVerifyIphoneNumber:(NSString*)iphoneNumber{
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",phoneRegex];
    return  [phoneTest evaluateWithObject:iphoneNumber];
}
+ (BOOL) YXBvalidateEmail:(NSString *)email{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}
+ (BOOL)YXBvalidateIDCardNumber:(NSString *)IDCardNumber{
    NSString *value=IDCardNumber;
    value = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSInteger length =0;
    if (!value) {
        return NO;
    }else {
        length = value.length;
        
        if (length !=15 && length !=18) {
            return NO;
        }
    }
    // 省份代码
    NSArray *areasArray =@[@"11",@"12", @"13",@"14", @"15",@"21", @"22",@"23", @"31",@"32", @"33",@"34", @"35",@"36", @"37",@"41", @"42",@"43", @"44",@"45", @"46",@"50", @"51",@"52", @"53",@"54", @"61",@"62", @"63",@"64", @"65",@"71", @"81",@"82", @"91"];
    
    NSString *valueStart2 = [value substringToIndex:2];
    BOOL areaFlag =NO;
    for (NSString *areaCode in areasArray) {
        if ([areaCode isEqualToString:valueStart2]) {
            areaFlag =YES;
            break;
        }
    }
    
    if (!areaFlag) {
        return false;
    }
    
    
    NSRegularExpression *regularExpression;
    NSUInteger numberofMatch;
    
    NSInteger year =0;
    switch (length) {
        case 15:
            year = [value substringWithRange:NSMakeRange(6,2)].intValue +1900;
            
            if (year %4 ==0 || (year %100 ==0 && year %4 ==0)) {
                
                regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$"
                                                                        options:NSRegularExpressionCaseInsensitive
                                                                          error:nil];//测试出生日期的合法性
            }else {
                regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$"
                                                                        options:NSRegularExpressionCaseInsensitive
                                                                          error:nil];//测试出生日期的合法性
            }
            numberofMatch = [regularExpression numberOfMatchesInString:value
                                                               options:NSMatchingReportProgress
                                                                 range:NSMakeRange(0, value.length)];
            
            
            if(numberofMatch >0)
            {
                return YES;
            }else
            {
                return NO;
            }
        case 18:
            
            year = [value substringWithRange:NSMakeRange(6,4)].intValue;
            if (year %4 ==0 || (year %100 ==0 && year %4 ==0)) {
                
                regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$"
                                                                        options:NSRegularExpressionCaseInsensitive
                                                                          error:nil];//测试出生日期的合法性
            }else {
                regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$"
                                                                        options:NSRegularExpressionCaseInsensitive
                                                                          error:nil];//测试出生日期的合法性
            }
            numberofMatch = [regularExpression numberOfMatchesInString:value
                                                               options:NSMatchingReportProgress
                                                                 range:NSMakeRange(0, value.length)];
            
            
            if(numberofMatch >0) {
                int S = ([value substringWithRange:NSMakeRange(0,1)].intValue + [value substringWithRange:NSMakeRange(10,1)].intValue) *7 + ([value substringWithRange:NSMakeRange(1,1)].intValue + [value substringWithRange:NSMakeRange(11,1)].intValue) *9 + ([value substringWithRange:NSMakeRange(2,1)].intValue + [value substringWithRange:NSMakeRange(12,1)].intValue) *10 + ([value substringWithRange:NSMakeRange(3,1)].intValue + [value substringWithRange:NSMakeRange(13,1)].intValue) *5 + ([value substringWithRange:NSMakeRange(4,1)].intValue + [value substringWithRange:NSMakeRange(14,1)].intValue) *8 + ([value substringWithRange:NSMakeRange(5,1)].intValue + [value substringWithRange:NSMakeRange(15,1)].intValue) *4 + ([value substringWithRange:NSMakeRange(6,1)].intValue + [value substringWithRange:NSMakeRange(16,1)].intValue) *2 + [value substringWithRange:NSMakeRange(7,1)].intValue *1 + [value substringWithRange:NSMakeRange(8,1)].intValue *6 + [value substringWithRange:NSMakeRange(9,1)].intValue *3;
                int Y = S %11;
                NSString *M =@"F";
                NSString *JYM =@"10X98765432";
                M = [JYM substringWithRange:NSMakeRange(Y,1)];// 判断校验位
                if ([M isEqualToString:[value substringWithRange:NSMakeRange(17,1)]]) {
                    return YES;// 检测ID的校验位
                }
                else
                {
                    return NO;
                }
                
            }
            else
            {
                return NO;
            }
        default:
            return false;
    }

}
+ (void)YXBtime: (UIButton *)btn{
    __block int timeout=60; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        if(timeout<=0){ //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [btn setTitle:@"获取验证码" forState:UIControlStateNormal];
                btn.titleLabel.font = [UIFont systemFontOfSize:12];
                btn.userInteractionEnabled = YES;
            });
        }else{
            NSString *strTime = [NSString stringWithFormat:@"%d秒后重新发送",timeout];
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [btn setTitle:strTime forState:UIControlStateNormal];
                btn.titleLabel.font = [UIFont systemFontOfSize:8];
                btn.userInteractionEnabled = NO;
            });
            timeout--;
        }
    });
    dispatch_resume(_timer);

}

+(int)YXBcurrenttime
{
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval a=[dat timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%f", a];
    int time = [timeString intValue];
    return time;
}
+ (NSString *)YXBtimeDifference:(int)time
{

    return [[self alloc]YXBtimeDifference:time];

}
- (NSString *)YXBtimeDifference:(int)time
{
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval a=[dat timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%f", a];
    int currentTime = [timeString intValue];
    int timeDifference = currentTime - time;
    NSString *differenceString = @"";
    if (timeDifference < 86400)
    {
        if (timeDifference < 60)
        {
            differenceString = @"1分钟前";
            
        }else if (timeDifference > 60 && timeDifference < 3600)
        {
            int tempTime = timeDifference/60;
            differenceString =[NSString stringWithFormat:@"%d分钟前",tempTime];
        }else if (timeDifference > 3600 && timeDifference < 86400)
        {
            int tempTime = timeDifference/3600;
            differenceString =[NSString stringWithFormat:@"%d小时前",tempTime];
        }
    }else if (timeDifference < 172800)
    {
        differenceString = @"昨天";
    }else
    {
        NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:time];
        //NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
        NSDateFormatter *dateFormat=[self newww];
        //[dateFormat setDateFormat:@"yyyy-MM-dd"];
        differenceString =[dateFormat stringFromDate:confromTimesp];
    }
    return differenceString;
    
}
-(NSDateFormatter *)newww
{
    static NSDateFormatter *new;
    static dispatch_once_t token;
    
    dispatch_once(&token,^{
        new = [[NSDateFormatter alloc] init];
        [new setDateFormat:@"yyyy-MM-dd"];
        
    } );
    
    return new;
}
+ (NSString *)YXBgetDocumentsPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:@"Documents"];
}
+(void)YXBsetlayerCornerRadiusAndmasksToBounds:(UIView *)view radius:(CGFloat)radius
{
    view.layer.cornerRadius= radius;//锚点越大图形越圆
    view.layer.masksToBounds= YES;
   
}
@end
