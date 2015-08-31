//
//  YXBMoneyViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBMoneyViewController.h"
#import "YXBMoneyDetailViewController.h"
#import "Define.h"
@interface YXBMoneyViewController ()

@end

@implementation YXBMoneyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTextView.placeholder=@"请输入密码";
    self.myTextView.placeholderColor=[UIColor redColor];
    self.title=@"技师";
    [YXBUserDefaultsInfo YXBsetlayerCornerRadiusAndmasksToBounds:self.clickBtn radius:10];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    YXBMoneyDetailViewController *moneyDetailVC=[[YXBMoneyDetailViewController alloc]init];
    moneyDetailVC.block=^(NSString *str){
        [sender setTitle:str forState:UIControlStateNormal];
    };
    [self presentPopUpViewController:moneyDetailVC];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
