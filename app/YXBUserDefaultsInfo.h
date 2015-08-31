//
//  YXBUserDefaultsInfo.h
//  app
//
//  Created by kpkj-ios on 15/8/5.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YXBUserDefaultsInfo : NSObject
/**
 *  判断用户是否登录
 *
 *  @return 是否登录
 */
+ (BOOL)ATgetUserIsLogin;
/**
 *  保存用户的id
 *
 *  @param uid 用户的id
 */
+(void)YXBsaveUserId:(NSString *)uid;
/**
 *  获取用户的id
 *
 *  @return 返回用户的id
 */
+(NSString *)YXBgetUserId;
/**
 *  保存用户名字
 *  @param userName 用户的名字
 */
+(void)YXBsaveUserName:(NSString *)userName;
/**
 *  获取保存的用户的名字
 *
 *  @return 返回用户的名字
 */
+(NSString *)YXBgetUserName;
/**
 *  保存用户的密码
 *
 *  @param passwords 用户的密码
 */
+(void)YXBsavePasswords:(NSString *)passwords;
/**
 *  获取用户保存的密码
 *
 *  @return 返回用户的密码
 */
+(NSString *)YXBgetPasswords;
/**
 *  保存用户的头像
 *
 *  @param imageName 用户头像的名字
 */
+(void)YXBsaveUserIcon:(NSString *)imageName;
/**
 *  获取用户的头像
 *
 *  @return 返回用户的头像
 */
+(NSString *)YXBgetIconImageName;
/**
 *  保存用户性别
 *
 *  @param sex 用户的性别
 */
+(void)YXBsaveUserSex:(NSString*)sex;
/**
 *  获取用户的性别
 *
 *  @return 返回用户的性别
 */
+(NSString*)YXBgetUserSex;
/**
 *  保存用户的手机号码
 *
 *  @param phoneNumber 用户的手机号码
 */
+(void)YXBsaveIphoneNumber:(NSString*)phoneNumber;
/**
 *  获取用户的手机号码
 *
 *  @return 返回用户的手机号码
 */
+(NSString*)YXBgetUserIphoneNumber;
/**
 *  验证用户的手机号码,返回用户手机号码是否正确，YES表示正确，NO表示不正确
 *
 *  @param iphoneNumber 用户的手机号码
 *
 *  @return 返回用户手机号码是否正确，YES表示正确，NO表示不正确
 */
+(BOOL)YXBVerifyIphoneNumber:(NSString*)iphoneNumber;
/**
 *  判断用户邮箱是否正确，YES表示正确，NO表示不正确
 *
 *  @param email 用户邮箱
 *
 *  @return 返回用户邮箱是否正确，
 */
+ (BOOL) YXBvalidateEmail:(NSString *)email;
/**
 *  判断用户身份证号码是否正确
 *
 *  @param IDCardNumber 用户身份证号码
 *
 *  @return 返回用户身份证号码是否正确
 */
+ (BOOL)YXBvalidateIDCardNumber:(NSString *)IDCardNumber;
/**
 *  发送验证码倒计时显示
 *
 *  @param btn 传递的按钮
 */
+ (void)YXBtime: (UIButton *)btn;
/**
 *  判断字符串是否为空
 *
 *  @param string 判断的字符串
 *
 *  @return 返回字符串是否为空
 */
+(BOOL) YXBisBlankString:(NSString *)string;
/**
 *  十六进制转化为颜色
 *
 *  @param stringToConvert 传递的字符串
 *
 *  @return 返回颜色
 */
+ (UIColor *) YXBcolorWithHexString: (NSString *) stringToConvert;
/**
 *  获取当前的时间
 *
 *  @return 返回当前的时间
 */
+(int)YXBcurrenttime;
/**
 *  计算时间
 *
 *  @param time 时间
 *
 *  @return 返回时间
 */
+ (NSString *)YXBtimeDifference:(int)time;
/**
 *  保存特定的到期时间
 *
 *  @param expireDate 到期时间
 *
 *  @return 到期时间
 */
+ (void)YXBSaveExpireDate:(NSDate *)expireDate;
/**
 *  获取到期时间
 *
 *  @param expireDate 到期时间
 */
+ (NSDate *)YXBGetExpireDate;
/**
 *  获取Documents文件的路径
 *
 *  @return 返回文件路径
 */
+ (NSString *)YXBgetDocumentsPath;
/**
 *  设置view为圆角矩形
 *
 *  @param view   传递的view
 *  @param radius radius值
 */
+(void)YXBsetlayerCornerRadiusAndmasksToBounds:(UIView *)view radius:(CGFloat)radius;
@end
