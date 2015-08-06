//
//  Define.h
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#ifndef app_Define_h
#define app_Define_h
/**
 *  获取设备的系统版本号
 */
#define iOS7 ([UIDevice currentDevice].systemVersion.floatValue >= 7.0)
#define iOS8 ([UIDevice currentDevice].systemVersion.floatValue >= 8.0)

/**
 *  获取4s设备的尺寸
 */
#define YXBDEVICE_height_4S ([UIScreen mainScreen].bounds.size.height == 480)
#define YXBDEVICE_width_4S ([UIScreen mainScreen].bounds.size.width == 320)
/**
 *  获取5/5s设备的尺寸
 */
#define YXBDEVICE_height_5S ([UIScreen mainScreen].bounds.size.height == 568)
#define YXBDEVICE_width_5S ([UIScreen mainScreen].bounds.size.width == 320)
/**
 *  获取6设备的尺寸
 */
#define YXBDEVICE_height_6 ([UIScreen mainScreen].bounds.size.height == 667)
#define YXBDEVICE_width_6 ([UIScreen mainScreen].bounds.size.width == 375)

/**
 *  获取6P设备的尺寸
 */
#define YXBDEVICE_height_6P ([UIScreen mainScreen].bounds.size.height == 1104)
#define YXBDEVICE_width_6P ([UIScreen mainScreen].bounds.size.width == 621)


/**
 *  设置字体Font的大小
 */
#define YXBFont(font) [UIFont boldSystemFontOfSize:font]

/**
 *  设置NavgationBarTitleFont的字体大小
 */
#define YXBNavgationBarTitleFont [UIFont boldSystemFontOfSize:20]
/**
 *  带有RGBA的颜色设置
 */
#define YXBCOLOR(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
/**
 *  获取本地文件（图片、plist等）
 */
#define YXBFile(file,ext) [[NSBundle mainBundle]pathForResource:file ofType:ext]
/**
 *  获取本地图片
 */
#define YXBLoadImage(file,ext) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:file ofType:ext]]

/**
 *  获取UIImage对象
 */
#define YXBImageNamed(_pointer) [UIImage imageNamed:[UIUtil imageName:_pointer]]

/**
 *  获取屏幕的KeyWindow
 */
#define YXBKeyWindow [UIApplication sharedApplication].keyWindow
/**
 *  NSLog输出
 */
#ifdef DEBUG
#define YXBLog(...) NSLog(__VA_ARGS__)
#else
#define YXBLog(...)
#endif

#define YXBAlertView(msg,title) [[[UIAlertView alloc]initWithTitle:@"温馨提示" message:msg delegate:nil cancelButtonTitle:title otherButtonTitles:nil, nil] show];

#import "UIImage+YXBResizableImage.h"
#import "UIBarButtonItem+YXBCreate.h"
#import "YXBNetworkingTool.h"
#import "UIViewController+ENPopUp.h"








/**
 *  设置单例类
 *
 *  @param class singleton_interface
 *
 *  @return 注意使用，不可乱用
 */
// .h
#define singleton_interface(class) + (instancetype)shared##class;

// .m
#define singleton_implementation(class) \
static class *_instance; \
\
+ (id)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
\
return _instance; \
} \
\
+ (instancetype)shared##class \
{ \
if (_instance == nil) { \
_instance = [[class alloc] init]; \
} \
\
return _instance; \
}
#endif
