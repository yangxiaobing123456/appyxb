//
//  YXBContactsViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBContactsViewController.h"
#import "Define.h"
#import "YXBAllModel.h"
#import "YXBContactsTableViewCell.h"
#import "UIImageView+WebCache.h"
@interface YXBContactsViewController ()

@end

@implementation YXBContactsViewController
-(NSMutableArray*)dataInfoArray
{
    if (!_dataInfoArray) {
        _dataInfoArray=[[NSMutableArray alloc]initWithCapacity:0];
    }
    return _dataInfoArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"服务项目";
    
    self.myTable.rowHeight=UITableViewAutomaticDimension;
    self.myTable.estimatedRowHeight=100;
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{

    [YXBHttpRequest YXBgetContactsData:@"100245" complete:^(NSMutableArray *arr) {
        self.dataInfoArray=arr;
        [self.myTable reloadData];
    }];

    [super viewWillAppear:animated];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataInfoArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID=@"cell";
    YXBContactsTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"YXBContactsTableViewCell" owner:self options:nil][0];
    }
    YXBAllModel *model=self.dataInfoArray[indexPath.row];
    [cell.icon setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://121.40.149.58:8080/%@",model.usericon]] placeholderImage:YXBImageNamed(@"040")];
    YXBLog(@"%@",model.attachphoto);
    if (model.attachphoto.length>0) {
        [cell.contentImageView setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://121.40.149.58:8080/%@",model.attachphotoBig]]];
        //YXBLog(@"%@",[NSString stringWithFormat:@"http://121.40.149.58:8080/%@",model.attachphotoBig]);
        cell.contentW.constant=60;
        cell.contentH.constant=60;
    }
    else
    {
        cell.contentW.constant=0;
        cell.contentH.constant=0;
    }
    cell.personInfoLb.text=model.content;
    cell.name.text=model.name;
    return cell;
}


@end
