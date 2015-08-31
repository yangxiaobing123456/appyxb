//
//  UIViewController+ENPopUp.h
//  ENPopUp
//
//  Created by Evgeny on 28.06.14.
//  Copyright (c) 2014 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ENPopUp)
//typedef void(^returnBlock)(NSString *);
@property (nonatomic, retain) UIViewController *en_popupViewController;
/**
 *  类别方法自定义弹出VC
 *
 *  @param popupViewController 弹出的VC
 */
- (void)presentPopUpViewController:(UIViewController *)popupViewController;
/**
 *  移除弹出视图VC
 */
- (void)dismissPopUpViewController;

@end
