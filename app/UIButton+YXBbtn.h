//
//  UIButton+YXBbtn.h
//  app
//
//  Created by kpkj-ios on 15/8/6.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (YXBbtn)
/**
 * 设置普通状态与高亮状态的背景图片
 */
-(void)YXBsetN_BG:(NSString *)nbg H_BG:(NSString *)hbg;
/**
 *  设置普通状态与选中状态的背景图片
 *
 *  @param NormalBg 普通状态
 *  @param selectBg 选中状态
 */
-(void)YXBsetNormal_BG:(NSString *)NormalBg Select_BG:(NSString *)selectBg;
@end
