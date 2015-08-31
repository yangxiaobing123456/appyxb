
//
//  YXBNetworkingTool.m
//  app
//
//  Created by kpkj-ios on 15/8/4.
//  Copyright (c) 2015年 杨小兵. All rights reserved.
//

#import "YXBNetworkingTool.h"
#import "AFNetworking.h"
#import "YXBIsNetworking.h"
#import "Define.h"
@implementation YXBNetworkingTool
//get请求
+ (void)GETWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    if ([YXBIsNetworking isConnectNetWork]==0) {
        YXBAlertView(@"网络连接失败，请检查网络", @"知道了");
        return;
    }
    // AFNetWorking
    // 创建请求管理对象
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    // 发生请求
    [manager GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    
}
//post请求
+ (void)POSTWithURL:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure
{
    if ([YXBIsNetworking isConnectNetWork]==0) {
        YXBAlertView(@"网络连接失败，请检查网络", @"知道了");
        return;
    }
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    // 发生请求
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    
}
//post请求
+ (void)POSTXmlWithURL:(NSString *)url params:(NSDictionary *)params success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure
{
    if ([YXBIsNetworking isConnectNetWork]==0) {
        YXBAlertView(@"网络连接失败，请检查网络", @"知道了");
        return;
    }
    // AFNetWorking
    // 创建请求管理对象
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    //NSDictionary *params = @{@"format": @"xml"};
    // 发生请求
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    
    
}
//post请求
+ (void)POSTWithURL:(NSString *)url params:(NSDictionary *)params formDataArray:(WBFormData *)formData success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure
{
    
    if ([YXBIsNetworking isConnectNetWork]==0) {
        YXBAlertView(@"网络连接失败，请检查网络", @"知道了");
        return;
    }
    // AFNetWorking
    // 创建请求管理对象
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    // 发送请求
    [manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> allFormData) {
            [allFormData appendPartWithFileData:formData.data name:formData.name fileName:formData.filename mimeType:formData.mimeType];
        } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end

/**
 *  用来封装文件数据的模型
 */
@implementation WBFormData


@end
