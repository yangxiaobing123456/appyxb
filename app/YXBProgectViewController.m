//
//  YXBProgectViewController.m
//  app
//
//  Created by jglz on 15/9/15.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBProgectViewController.h"
#import "Define.h"
#import "YXBProgectDetailViewController.h"
#import "YXBProdectDetaolViewController.h"
@interface YXBProgectViewController ()

@end

@implementation YXBProgectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (YXBDEVICE_height==480) {
        self.myViewH.constant=80;
        self.writherH.constant=40;
        self.writherW.constant=40;
        self.writherHer.constant=8;
        self.writherLbV.constant=5;
        [self.view layoutIfNeeded];
    }else if (YXBDEVICE_height==568)
    {
    
        self.writherLbV.constant=5;
        self.writherH.constant=40;
        self.writherW.constant=40;
        [self.view layoutIfNeeded];
    
    }
    
    UIBarButtonItem *popPre = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(popToPre)];
    self.navigationItem.rightBarButtonItem=popPre;
    // Do any additional setup after loading the view from its nib.
}
-(void)popToPre
{
    YXBProdectDetaolViewController *vc=[[YXBProdectDetaolViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];



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
