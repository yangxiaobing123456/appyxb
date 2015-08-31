//
//  PCLocationModel.h
//  PNCMobileBank
//
//  Created by 丁丁 on 14-11-4.
//  Copyright (c) 2014年 张瑞. All rights reserved.
//

#import <Foundation/Foundation.h>

//默认的坐标位置
#define DefaultLocation @{@"city":@"南京市",@"latitude":@"31.5834",@"longitude":@"118.4616"}

//坐标更新通知
#define LocationUpdataNotification @"LocationUpdataNotification"

/*!
 *  @brief  定位模型
 */
@interface PCLocationModel : NSObject


/*!
 *  @brief 坐标信息。其中包含key-value 如下：city-城市         latitude-维度      longitude-经度
 */
@property (nonatomic,strong) NSDictionary *location;

/*!
 *  @brief  上一次更新时间
 */
@property (nonatomic,copy) NSDate *lastUpdataTime;

/*!
 *  @brief   获取定位模型单例
 *
 *  @return 定位模型
 */
+ (PCLocationModel *)sharedModel;

//初始化 定位
+(void)initLocation;

/*!
 *  @brief  坐标信息。其中包含key-value 如下：city-城市         latitude-维度      longitude-经度
 *
 *  @return 坐标信息字典
 */
+(NSDictionary *)location;

@end
