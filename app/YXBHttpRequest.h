//
//  YXBHttpRequest.h
//  app
//
//  Created by kpkj-ios on 15/8/5.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YXBHttpRequest : NSObject
/**
 *  获取首页人脉数据
 *
 *  @param uid      用户id
 *  @param complete 返回人脉数据
 */
+(void)YXBgetContactsData:(NSString *)uid complete:(void (^)(NSMutableArray *arr))complete;
@end
