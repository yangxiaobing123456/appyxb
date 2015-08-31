//
//  YXBTabBarViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBTabBarViewController.h"
#import "YXBBaseNavigationViewController.h"
#import "YXBContactsViewController.h"
#import "YXBMeViewController.h"
#import "YXBMoneyViewController.h"
#import "YXBFindViewController.h"
#import "Define.h"
@interface YXBTabBarViewController ()
@property (nonatomic, strong) YXBContactsViewController *contactsVC;
@property (nonatomic, strong) YXBMoneyViewController *moneyVC;
@property (nonatomic, strong) YXBFindViewController *findVC;
@property (nonatomic, strong) YXBMeViewController *meVC;
@end

@implementation YXBTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpAllChildViewController];
    // Do any additional setup after loading the view.
}

- (void)setUpAllChildViewController/**< 添加所有子控制器 */
{
    // 首页
    YXBContactsViewController *home = [[YXBContactsViewController alloc] init];
    
    [self setUpOneChildViewController:home title:@"人脉" imageName:@"icon_rm" selImageName:@"icon_rm_1"];
    _contactsVC = home;
    
    // 资金
    YXBMoneyViewController *message = [[YXBMoneyViewController alloc] init];
    [self setUpOneChildViewController:message title:@"资金" imageName:@"icon_zj" selImageName:@"icon_zj_1"];
    _moneyVC = message;
    
    // 发现
    YXBFindViewController *discover = [[YXBFindViewController alloc] init];
    [self setUpOneChildViewController:discover title:@"发现" imageName:@"icon_fx" selImageName:@"icon_fx_1"];
    
    
    // 我
    YXBMeViewController *profile = [[YXBMeViewController alloc] init];
    [self setUpOneChildViewController:profile title:@"我" imageName:@"icon_wo" selImageName:@"icon_wo_1"];
    _meVC = profile;
    
}

// 添加一个控制器的属性
- (void)setUpOneChildViewController:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName selImageName:(NSString *)selImageName
{
    vc.tabBarItem.title = title;
    
    
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selImage = [UIImage imageNamed:selImageName];
    if (iOS7) {
        selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    vc.tabBarItem.selectedImage = selImage;
    
//    [vc.tabBarController.tabBarItem setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    YXBBaseNavigationViewController *nav=[[YXBBaseNavigationViewController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
    
    
    
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

@end
