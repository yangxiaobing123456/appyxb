//
//  YXBFindViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBFindViewController.h"
#import "UIBarButtonItem+YXBCreate.h"
#import "YXBMessageViewController.h"
#import "YXBfindTableViewCell.h"
@interface YXBFindViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UITableView *myTable;

@end

@implementation YXBFindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"订单";
    UIBarButtonItem *popPre = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(popToPre)];
    self.navigationItem.rightBarButtonItem = popPre;
    self.myView.hidden=YES;
    UISearchBar *searchBar=[[UISearchBar alloc]init];
    searchBar.placeholder=@"搜搜更强大";
    searchBar.delegate=self;
    self.navigationItem.titleView=searchBar;
    // Do any additional setup after loading the view from its nib.
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchText.length!=0) {
        
        self.myView.hidden=NO;
    }else
    {
    
        self.myView.hidden=YES;
    }

    


}
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{

    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIndexField=@"cell";
    
    YXBfindTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIndexField];
    
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"YXBfindTableViewCell" owner:self options:nil][0];
    }
    
    
    if (indexPath.row==2) {
        cell.yxbName.text=@"张三丰传人";
    }else
    {
        cell.yxbName.text=@"张三丰";
    }
    cell.yxbId.text=@"今日可约";
    cell.yxbAge.text=@"37岁安徽人~高级按摩师";
    cell.yxbContentLb.text=@"15年的按摩推拿经验，曾进修于北京华佗中国医院";
    cell.yxbLocationLb.text=@"15.3km";
    return cell;

}
-(void)popToPre
{
    YXBMessageViewController *messageVC=[[YXBMessageViewController alloc]init];
    [self.navigationController pushViewController:messageVC animated:YES];

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
