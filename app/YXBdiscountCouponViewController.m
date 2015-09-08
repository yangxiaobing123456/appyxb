//
//  YXBdiscountCouponViewController.m
//  app
//
//  Created by jglz on 15/9/7.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBdiscountCouponViewController.h"
#import "YXBdiscountCouponTableViewCell.h"
#import "YXBSizeAndlayoutViewController.h"
@interface YXBdiscountCouponViewController ()

@end

@implementation YXBdiscountCouponViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // [self.myTable reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIndexField=@"cell";
    
    YXBdiscountCouponTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIndexField];
    
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"YXBdiscountCouponTableViewCell" owner:nil options:nil][0];
    }
    return cell;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    YXBSizeAndlayoutViewController *sizeAndLayoutVC=[[YXBSizeAndlayoutViewController alloc]init];
    
    [self.navigationController pushViewController:sizeAndLayoutVC animated:YES];

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
