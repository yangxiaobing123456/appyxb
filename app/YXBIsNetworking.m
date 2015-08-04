//
//  YXBIsNetworking.m
//  app
//
//  Created by kpkj-ios on 15/8/4.
//  Copyright (c) 2015年 杨小兵. All rights reserved.
//

#import "YXBIsNetworking.h"
#import "Reachability.h"
@implementation YXBIsNetworking
typedef NS_ENUM(NSInteger, NetworkStatusType) {
    NetworkStatusTypeCustom = 0,           /**< 0表示没有网络 */
    NetworkStatusType3G=1,                 /**< 1表示3G/4G */
    NetworkStatusTypeWIFI=2,               /**< 2表示WIFI */
};
/**
 *  判断是否有网络
 *
 *  @return 1、2表示有网络，1表示3G/4G，2表示WIFI，0表示没有
 */
+(NSInteger)isConnectNetWork/**< 1、2表示有网络，1表示3G，2表示WIFI，0表示没有 */
{
    NSInteger isExistenceNetwork = NetworkStatusType3G;
    Reachability *r = [Reachability reachabilityWithHostName:@"www.baidu.com"];switch ([r currentReachabilityStatus])
    {
        case NotReachable:
            isExistenceNetwork=NetworkStatusTypeCustom;
            break;
        case ReachableViaWWAN:
            isExistenceNetwork=NetworkStatusType3G;
            
            break;
        case ReachableViaWiFi:
            isExistenceNetwork=NetworkStatusTypeWIFI;
           
            break;
    }
    return isExistenceNetwork;
}

@end
