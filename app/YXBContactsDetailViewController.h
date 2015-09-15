//
//  YXBContactsDetailViewController.h
//  app
//
//  Created by jglz on 15/9/9.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YXBCustomBtn.h"
@interface YXBContactsDetailViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *myView;
- (IBAction)btnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *myBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *myViewH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *myViewW;

@end
