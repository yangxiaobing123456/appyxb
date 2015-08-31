//
//  UIBarButtonItem+YXBCreate.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "UIBarButtonItem+YXBCreate.h"

@implementation UIBarButtonItem (YXBCreate)
+ (instancetype)barButtonItemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.bounds = CGRectMake(0, 0, 30, 30);
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return  [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
