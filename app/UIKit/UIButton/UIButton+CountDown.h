//
//  UIButton+countDown.h
//  NetworkEgOc
//
//  Created by iosdev on 15/3/17.
//  Copyright (c) 2015年 iosdev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CountDown)
#warning 创建按钮的时候请使用custom，否则按钮倒计时会有闪烁
/**
 *  设置验证码的两种方式（建议第二种，简单）
 */
-(void)startTime:(NSInteger )timeout title:(NSString *)tittle waitTittle:(NSString *)waitTittle;
-(void)time;
@end
