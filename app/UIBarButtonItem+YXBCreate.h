//
//  UIBarButtonItem+YXBCreate.h
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YXBCreate)
/**
 *  <#Description#>
 *
 *  @param imageName     <#imageName description#>
 *  @param highImageName <#highImageName description#>
 *  @param target        <#target description#>
 *  @param action        <#action description#>
 *
 *  @return <#return value description#>
 */
+ (instancetype)barButtonItemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action;
@end
