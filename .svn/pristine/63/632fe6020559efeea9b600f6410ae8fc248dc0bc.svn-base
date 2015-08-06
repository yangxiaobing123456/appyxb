//
//  YXBMeViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBMeViewController.h"
#import "YXBMessageViewController.h"
#import "Define.h"
@interface YXBMeViewController ()
- (IBAction)push:(id)sender;

@end

@implementation YXBMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"我";
    NSDictionary *paramsDic=@{@"100245":@"uid"};
    [YXBNetworkingTool POSTWithURL:@"http://121.40.149.58:8080/api/dyn/list1" params:paramsDic success:^(id responseObject) {
        NSLog(@"%@",responseObject);
        
    } failure:^(NSError *error) {
        
    }];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)push:(id)sender {
    
    YXBMessageViewController *messageVC=[[YXBMessageViewController alloc]init];
    [self.navigationController pushViewController:messageVC animated:YES];
}
@end
