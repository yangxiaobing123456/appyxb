//
//  UIButton+YXBbtn.m
//  app
//
//  Created by kpkj-ios on 15/8/6.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "UIButton+YXBbtn.h"

@implementation UIButton (YXBbtn)
-(void)YXBsetN_BG:(NSString *)nbg H_BG:(NSString *)hbg{
    [self setBackgroundImage:[UIImage imageNamed:nbg] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:hbg] forState:UIControlStateHighlighted];
}
-(void)YXBsetNormal_BG:(NSString *)NormalBg Select_BG:(NSString *)selectBg
{
    [self setBackgroundImage:[UIImage imageNamed:NormalBg] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:selectBg] forState:UIControlStateSelected];

}
@end
