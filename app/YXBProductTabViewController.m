//
//  YXBProductTabViewController.m
//  app
//
//  Created by jglz on 15/9/15.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBProductTabViewController.h"
#import "YXBfindTableViewCell.h"
@interface YXBProductTabViewController ()

@end

@implementation YXBProductTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 60;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        
        
        UIView *vi=[self.view viewWithTag:100];

            [vi removeFromSuperview];
    
    static NSString *cellIndexField=@"cell";
    
    YXBfindTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIndexField];
    
        
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"YXBfindTableViewCell" owner:self options:nil][0];
    }
    return cell;

    }else
    {
        static NSString *ID=@"cell";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
        if (!cell) {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
            cell.tag=100;
            
            
        }

        cell.textLabel.text=@"小儿感冒调理";
        
        return cell;
    
    }
    
    
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (indexPath.row==0) {
        return 111;
    }else{
    
        return 44;
    }

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
