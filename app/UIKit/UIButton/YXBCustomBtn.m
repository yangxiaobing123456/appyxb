//
//  YXBCustomBtn.m
//  app
//
//  Created by jglz on 15/9/10.
//  Copyright (c) 2015年 yxb. All rights reserved.
//
/*
 使用方法：
        YXBCustomBtn *btn=[[YXBCustomBtn alloc]init];
        btn.frame=CGRectMake(150, 200, 150, 100);
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.backgroundColor=[UIColor yellowColor];
        [self.view addSubview:btn];
 建议：按钮的大小建议120 *40。别的请自定义VFL语句设置布局约束
 
 
 
 */
#import "YXBCustomBtn.h"

@implementation YXBCustomBtn


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
    UILabel *contentsLb=[[UILabel alloc]init];
    
    contentsLb.text=_contentText;
    
    contentsLb.font=[UIFont systemFontOfSize:14 weight:20];
    
    [self addSubview:contentsLb];
    contentsLb.translatesAutoresizingMaskIntoConstraints=NO;
    
    NSArray *constraints3=[NSLayoutConstraint constraintsWithVisualFormat:@"H:[contentsLb]-5-|"options:0 metrics:nil views:NSDictionaryOfVariableBindings(contentsLb)];
    
    NSArray *constraints4=[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[contentsLb(==20)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(contentsLb)];
    
    [self addConstraints:constraints3];
    [self addConstraints:constraints4];
    NSLog(@"%f%f",self.frame.size.height,self.frame.size.width);
    
    UIImageView *imgView=[[UIImageView alloc]init];
    
    imgView.image=[UIImage imageNamed:@"GPS"];
    
    [self addSubview:imgView];
    
    imgView.translatesAutoresizingMaskIntoConstraints=NO;
    
    NSArray *constraints1=[NSLayoutConstraint constraintsWithVisualFormat:@"H:[imgView(==25)]-1-[contentsLb]"options:0 metrics:nil views:NSDictionaryOfVariableBindings(imgView,contentsLb)];
    
    NSArray *constraints2=[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-3-[imgView(==25)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(imgView)];
    
    [self addConstraints:constraints1];
    [self addConstraints:constraints2];
    
    
    
    
    
}


@end
