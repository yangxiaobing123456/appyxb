//
//  YXBfindTableViewCell.h
//  app
//
//  Created by jglz on 15/9/1.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YXBfindTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *yxbImageView;
@property (weak, nonatomic) IBOutlet UILabel *yxbName;
@property (weak, nonatomic) IBOutlet UILabel *yxbId;
@property (weak, nonatomic) IBOutlet UILabel *yxbAge;
@property (weak, nonatomic) IBOutlet UILabel *yxbContentLb;
@property (weak, nonatomic) IBOutlet UILabel *yxbLocationLb;

@end
