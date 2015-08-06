//
//  UIImage+YXBResizableImage.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "UIImage+YXBResizableImage.h"

@implementation UIImage (YXBResizableImage)
+(UIImage *)resizableImage:(NSString *)resizableImageName top:(CGFloat)top bottom:(CGFloat)bottom left:(CGFloat)left right:(CGFloat)right
{
    UIImage *img=[UIImage imageNamed:resizableImageName];
    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
    return [img resizableImageWithCapInsets:insets];;

}
+(UIImage *)YXBstretchedImageWithName:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name];
    int leftCap = image.size.width * 0.5;
    int topCap = image.size.height * 0.5;
    return [image stretchableImageWithLeftCapWidth:leftCap topCapHeight:topCap];
}
@end
