//
//  YXBBaseNavigationViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBBaseNavigationViewController.h"
#import "Define.h"
#import "UIColor+YXBextend.h"
@interface YXBBaseNavigationViewController ()

@end

@implementation YXBBaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  设置全局的导航栏颜色
     */
    UIImage *navbarPortrait = [UIImage resizableImage:@"navBg-1" top:1 bottom:2 left:1 right:2];
    [[UINavigationBar appearance] setBackgroundImage:navbarPortrait
                                       forBarMetrics:UIBarMetricsDefault];
    [self setUpNavBarTitle];
    [self setUpNavBarButton];
    
}
/**
 *  设置全局的NavBarButton
 */
-(void)setUpNavBarButton
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    // 设置不可用状态下的按钮颜色
    NSMutableDictionary *disableDictM = [NSMutableDictionary dictionary];
    disableDictM[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [item setTitleTextAttributes:disableDictM forState:UIControlStateDisabled];
    
    NSMutableDictionary *normalDictM = [NSMutableDictionary dictionary];
    normalDictM[NSForegroundColorAttributeName] = [UIColor orangeColor];
    // 设置普通状态下的按钮颜色
    [item setTitleTextAttributes:normalDictM forState:UIControlStateNormal];
    

}
/**
 *  设置导航条的标题
 *
 *  @return void
 */
- (void)setUpNavBarTitle
{
    UINavigationBar *nav = [UINavigationBar appearanceWhenContainedIn:[YXBBaseNavigationViewController class], nil];
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    dictM[NSForegroundColorAttributeName] = [UIColor blackColor];
    [nav setTitleTextAttributes:dictM];


}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.childViewControllers.count) {  /**< 不是根控制器 */
        viewController.hidesBottomBarWhenPushed = YES;
        
        // 设置导航条的按钮
        UIBarButtonItem *popPre = [UIBarButtonItem barButtonItemWithImage:@"icon_camera_back_normal" highImage:@"icon_camera_back_highlighted" target:self action:@selector(popToPre)];
        viewController.navigationItem.leftBarButtonItem = popPre;
        
    }
    [super pushViewController:viewController animated:animated];
    
}
- (void)popToPre
{
    [self popViewControllerAnimated:YES];
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
