//
//  YXBProductTabViewController.h
//  app
//
//  Created by jglz on 15/9/15.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YXBProductTabViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTable;

@end
