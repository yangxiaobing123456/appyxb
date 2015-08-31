//
//  NSDictionary+Merge.h
//  IOS-Categories
//
//  Created by Jakey on 15/1/25.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Merge)
/**
 *  合并两个字典
 *
 *  @param dict1
 *  @param dict2
 *
 *  @return 字典
 */
+ (NSDictionary *)dictionaryByMerging:(NSDictionary *)dict1 with:(NSDictionary *)dict2;
- (NSDictionary *)dictionaryByMergingWith:(NSDictionary *)dict;
@end
