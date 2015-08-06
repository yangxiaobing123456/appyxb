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
    [YXBNetworkingTool POSTWithURL:@"www.baidu.com" params:nil success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    }];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)push:(id)sender {
    
    YXBMessageViewController *messageVC=[[YXBMessageViewController alloc]init];
    [self.navigationController pushViewController:messageVC animated:YES];
}
@end
