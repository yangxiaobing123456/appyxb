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
    /**
     *  设置tabBar的背景颜色
     */
    //self.tabBar.backgroundColor=[UIColor yellowColor];
    [self setUpAllChildViewController];
    
}

- (void)setUpAllChildViewController/**< 添加所有子控制器 */
{
    // 首页
    YXBContactsViewController *home = [[YXBContactsViewController alloc] init];
    
    [self setUpOneChildViewController:home title:@"服务项目" imageName:@"icon_rm" selImageName:@"icon_rm_1"];
    _contactsVC = home;
    
    // 资金
    YXBMoneyViewController *message = [[YXBMoneyViewController alloc] init];
    [self setUpOneChildViewController:message title:@"技师" imageName:@"icon_zj" selImageName:@"icon_zj_1"];
    _moneyVC = message;
    
    // 发现
    YXBFindViewController *discover = [[YXBFindViewController alloc] init];
    [self setUpOneChildViewController:discover title:@"订单" imageName:@"icon_fx" selImageName:@"icon_fx_1"];
    
    
    // 我
    YXBMeViewController *profile = [[YXBMeViewController alloc] init];
    [self setUpOneChildViewController:profile title:@"我" imageName:@"icon_wo" selImageName:@"icon_wo_1"];
    _meVC = profile;
    
}
/**
 *  添加一个控制器的属性
 *
 *  @return void
 */
- (void)setUpOneChildViewController:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName selImageName:(NSString *)selImageName
{
    vc.tabBarItem.title = title;/**< 设置标题 */
    /**
     *  设置UIControlStateNormal状态下的字体颜色
     */
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    dictM[NSForegroundColorAttributeName] = [UIColor blackColor];
    [vc.tabBarItem setTitleTextAttributes:dictM forState:UIControlStateNormal];
    
    /**
     *  设置UIControlStateSelected下的字体颜色
     */
    NSMutableDictionary *selectDictM = [NSMutableDictionary dictionary];
    selectDictM[NSForegroundColorAttributeName] = YXBCOLOR(255, 87, 35, 1);
    [vc.tabBarItem setTitleTextAttributes:selectDictM forState:UIControlStateSelected];
    
    /**
     *  设置tabBarItem的图片
     */
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    UIImage *selImage = [UIImage imageNamed:selImageName];
    if (iOS7) {
        selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    vc.tabBarItem.selectedImage = selImage;
    /**
     创建导航控制器
     */
    YXBBaseNavigationViewController *nav=[[YXBBaseNavigationViewController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
