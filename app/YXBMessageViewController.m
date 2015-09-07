//
//  YXBMessageViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBMessageViewController.h"
#import "UITextView+PlaceHolder.h"
#import "NYSegmentedControl.h"
@interface YXBMessageViewController ()

@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@end

@implementation YXBMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UISegmentedControl *segmentC=[[UISegmentedControl alloc]initWithItems:@[@"技师",@"服务"]];
//    
//    self.navigationItem.titleView=segmentC;
    
    //self.title=@"消息";
    [self.myTextView addPlaceHolder:@"请输入密码"];
    // Do any additional setup after loading the view from its nib.
    
    
    NYSegmentedControl *foursquareSegmentedControl = [[NYSegmentedControl alloc] initWithItems:@[@"技师", @"服务"]];
    foursquareSegmentedControl.titleTextColor = [UIColor colorWithRed:0.38f green:0.68f blue:0.93f alpha:1.0f];
    foursquareSegmentedControl.selectedTitleTextColor = [UIColor whiteColor];
    foursquareSegmentedControl.selectedTitleFont = [UIFont systemFontOfSize:13.0f];
    foursquareSegmentedControl.segmentIndicatorBackgroundColor = [UIColor colorWithRed:0.38f green:0.68f blue:0.93f alpha:1.0f];
    foursquareSegmentedControl.backgroundColor = [UIColor colorWithRed:0.31f green:0.53f blue:0.72f alpha:1.0f];
    foursquareSegmentedControl.borderWidth = 0.0f;
    foursquareSegmentedControl.segmentIndicatorBorderWidth = 0.0f;
    foursquareSegmentedControl.segmentIndicatorInset = 1.0f;
    foursquareSegmentedControl.segmentIndicatorBorderColor = self.view.backgroundColor;
    [foursquareSegmentedControl sizeToFit];
    foursquareSegmentedControl.cornerRadius = CGRectGetHeight(foursquareSegmentedControl.frame) / 2.0f;
    self.navigationItem.titleView=foursquareSegmentedControl;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

    [self.view endEditing:YES];
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
