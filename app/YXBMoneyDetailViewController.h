//
//  YXBMoneyDetailViewController.h
//  app
//
//  Created by kpkj-ios on 15/8/4.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^returnBlock)(NSString *);
@interface YXBMoneyDetailViewController : UIViewController
@property (nonatomic,copy) returnBlock block;
@end
