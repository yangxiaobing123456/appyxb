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
    [btn addTarget:self action:@selector(btnClickn:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
//    
//    UILabel *leftLb=[[UILabel alloc]init];
//    
//    leftLb.text=@"中国人民";
//    
//    UILabel *rightLb=[[UILabel alloc]init];
//    
//    [self.view addSubview:leftLb];
//    
//    [self.view addSubview:rightLb];
//    
//    
//    rightLb.text=@"中国人民";
//    
//    
//    leftLb.backgroundColor=[UIColor redColor];
//    
//    rightLb.backgroundColor=[UIColor yellowColor];
//    
//    leftLb.translatesAutoresizingMaskIntoConstraints = NO;
//    rightLb.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    NSArray *constraints1=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[leftLb(==100)]-30-[rightLb]"options:0 metrics:nil views:NSDictionaryOfVariableBindings(leftLb,rightLb)];
//    
//    NSArray *constraints2=[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[leftLb(==100)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(leftLb)];
//
//    [self.view addConstraints:constraints1];
//    [self.view addConstraints:constraints2];
//    
//    NSArray *constraints3=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[rightLb]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(rightLb)];
//    
//    [rightLb addConstraints:constraints3];
//    
//    
//    NSLayoutConstraint* heightConstraint = [NSLayoutConstraint constraintWithItem:leftLb attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:rightLb attribute:NSLayoutAttributeCenterY multiplier:1 constant:0.0f];
//    
//    heightConstraint.active = YES;
//    
//    NSLayoutConstraint* heightConstraint1 = [NSLayoutConstraint constraintWithItem:leftLb attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:rightLb attribute:NSLayoutAttributeWidth multiplier:.5f constant:50.0f];
//    
//    heightConstraint1.active = YES;
//    
//    NSLayoutConstraint* heightConstraint2 = [NSLayoutConstraint constraintWithItem:leftLb attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:rightLb attribute:NSLayoutAttributeHeight multiplier:0.5f constant:0.0f];
//    
//    heightConstraint2.active = YES;
}
-(void)btnClickn:(YXBCustomBtn *)sender
{

    YXBLog(@"按钮点击了");

}


- (IBAction)btnClick:(id)sender {
    
    [UIView animateWithDuration:.5f animations:^{
        
        self.myViewH.constant=140;
        
        self.myViewW.constant=140;
        
        [self.view layoutIfNeeded];
        
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:.5 animations:^{
           
            self.myViewH.constant=150;
            
            self.myViewW.constant=150;
            
        
            [self.view layoutIfNeeded];
            
        }];
        
        
    }];
    
    
}
@end
