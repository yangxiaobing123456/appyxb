//
//  YXBHttpRequest.m
//  app
//
//  Created by kpkj-ios on 15/8/5.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBHttpRequest.h"
#import "YXBAllModel.h"
#import "Define.h"
#import "MJExtension.h"
@implementation YXBHttpRequest
+(void)YXBgetContactsData:(NSString *)uid complete:(void (^)(NSMutableArray *arr))complete
{

    NSDictionary *paramsDic=@{@"100245":uid};
    [YXBNetworkingTool POSTWithURL:@"http://121.40.149.58:8080/api/dyn/list1" params:paramsDic success:^(id responseObject) {
        //NSLog(@"%@",responseObject);
        NSMutableArray *dataArr=[NSMutableArray arrayWithCapacity:0];
        dataArr=(NSMutableArray *)[YXBAllModel objectArrayWithKeyValuesArray:responseObject];
//        for (NSDictionary *dic in responseObject) {
//            YXBAllModel *model=[YXBAllModel objectWithKeyValues:dic];
//            [dataArr addObject:model];
//        }
        if (complete) {
            complete(dataArr);
        }
        
        
    } failure:^(NSError *error) {
        
    }];


}
@end
