//
//  YXBContactsDetailViewController.m
//  app
//
//  Created by jglz on 15/9/9.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBContactsDetailViewController.h"
#import "Define.h"
#import "YXBTimeViewController.h"
#import "YXBdiscountCouponViewController.h"

@interface YXBContactsDetailViewController ()

@end

@implementation YXBContactsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    YXBTimeViewController *yxbtimeVC=[[YXBTimeViewController alloc]init];
//    YXBdiscountCouponViewController *yxbdisVC=[[YXBdiscountCouponViewController alloc]init];
    
    YXBCustomBtn *btn=[[YXBCustomBtn alloc]init];
    btn.frame=CGRectMake(150, 200, 40, 30);
    btn.contentText=@"南京";
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}
-(void)btnClick:(YXBCustomBtn *)sender
{

    YXBLog(@"按钮点击了");

}


@end
