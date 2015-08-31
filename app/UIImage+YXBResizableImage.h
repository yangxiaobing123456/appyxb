//
//  UIImage+YXBResizableImage.h
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YXBResizableImage)
/**
 *  图片拉伸
 *
 *  @param resizableImageName 拉伸图片的名字
 *  @param top                顶端盖高度
 *  @param bottom             底端盖高度
 *  @param left               左端盖宽度
 *  @param right              右端盖宽度
 *
 *  @return 返回拉伸后的图片
 */

+(UIImage *)resizableImage:(NSString *)resizableImageName top:(CGFloat)top bottom:(CGFloat)bottom left:(CGFloat)left right:(CGFloat)right;
/**
 *返回中心拉伸的图片
 */
+(UIImage *)YXBstretchedImageWithName:(NSString *)name;
@end
