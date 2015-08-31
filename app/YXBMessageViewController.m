//
//  YXBMessageViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBMessageViewController.h"
#import "UITextView+PlaceHolder.h"
@interface YXBMessageViewController ()

@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@end

@implementation YXBMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"消息";
    [self.myTextView addPlaceHolder:@"请输入密码"];
    // Do any additional setup after loading the view from its nib.
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
