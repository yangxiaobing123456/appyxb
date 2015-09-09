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
    
//    UISegmentedControl *seg = [[UISegmentedControl alloc] init];
//    seg.frame = CGRectMake(-4, 100, 328, 49);
//    [seg insertSegmentWithTitle:@"我参加的活动" atIndex:0 animated:YES];
//    [seg insertSegmentWithTitle:@"我发布的活动" atIndex:1 animated:YES];
//    [seg setSelectedSegmentIndex:1];
//    [seg setTintColor:[UIColor orangeColor]];
//    //[seg addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
//    [self.view addSubview:seg];
//    //隐藏黄线
//    UILabel *lineLabely = [[UILabel alloc] initWithFrame:CGRectMake(0, 47, 320, 1)];
//    lineLabely.backgroundColor = [UIColor whiteColor];
    //[self.view addSubview:lineLabely];
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
