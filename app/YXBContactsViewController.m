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
typedef NS_ENUM(NSInteger, Test1) {
    
    //以下是枚举成员
    
    Test1A = 0,
    
    Test1B = 1,
    
    Test1C = 2,
    
    Test1D = 3
    
};
@interface YXBContactsViewController ()

{

    
    Test1 text;

}

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
    text=Test1A;
    //self.myTable.rowHeight=UITableViewAutomaticDimension;
    //self.myTable.estimatedRowHeight=100;
    
//    UIButton *upBtn=[UIButton buttonWithType:UIButtonTypeCustom];
//    upBtn.frame=CGRectMake(YXBDEVICE_width-80, YXBDEVICE_height-200, 50, 50);
//    upBtn.backgroundColor=[UIColor redColor];
//    [upBtn addTarget:self action:@selector(btnUp) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:upBtn];
    // Do any additional setup after loading the view from its nib.
}
//-(void)btnUp
//{
//    NSIndexPath *indexPath=[NSIndexPath indexPathForRow:0 inSection:0];
//
//    [self.myTable scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
//
//}
-(void)viewWillAppear:(BOOL)animated
{

//    [YXBHttpRequest YXBgetContactsData:@"100245" complete:^(NSMutableArray *arr) {
//        self.dataInfoArray=arr;
//        [self.myTable reloadData];
//    }];
    [super viewWillAppear:animated];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        
    }
    if (text==Test1A) {
        cell.textLabel.text=@"FJJFTHDETHHDH";
    }else if (text==Test1B)
    {
        cell.textLabel.text=@"RTYBFXBDFBDDB";
        
    }else if (text==Test1C)
    {
        cell.textLabel.text=@"SFHDHDFHFDDFG";
    }else
    {
        cell.textLabel.text=@"SDFSDFSERDFSD";
    }
    
    return cell;
//    YXBContactsTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
//    if (!cell) {
//        cell=[[NSBundle mainBundle]loadNibNamed:@"YXBContactsTableViewCell" owner:self options:nil][0];
//    }
//    YXBAllModel *model=self.dataInfoArray[indexPath.row];
//    [cell.icon setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://121.40.149.58:8080/%@",model.usericon]] placeholderImage:YXBImageNamed(@"040")];
//    YXBLog(@"%@",model.attachphoto);
//    if (model.attachphoto.length>0) {
//        [cell.contentImageView setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://121.40.149.58:8080/%@",model.attachphotoBig]]];
//        //YXBLog(@"%@",[NSString stringWithFormat:@"http://121.40.149.58:8080/%@",model.attachphotoBig]);
//        cell.contentW.constant=60;
//        cell.contentH.constant=60;
//    }
//    else
//    {
//        cell.contentW.constant=0;
//        cell.contentH.constant=0;
//    }
//    cell.personInfoLb.text=model.content;
//    cell.name.text=model.name;
    
}
- (IBAction)continue:(id)sender {
    
    text=Test1A;
    [self.myTable reloadData];
    [UIView animateWithDuration:.5 animations:^{
        
        self.btnLbBgConstraint.constant=0;
        [self.view layoutIfNeeded];
        
    }];
}
- (IBAction)did:(id)sender {
    self.nameLb.text=@"康复推拿";
    text=Test1B;
    [self.myTable reloadData];
    [UIView animateWithDuration:.5 animations:^{
        
        self.btnLbBgConstraint.constant=YXBDEVICE_width/3;
        [self.view layoutIfNeeded];
        
    }];
}

- (IBAction)cancel:(id)sender {
    text=Test1C;
    [self.myTable reloadData];
    [UIView animateWithDuration:.5 animations:^{
        
        self.btnLbBgConstraint.constant=YXBDEVICE_width/3*2;
        [self.view layoutIfNeeded];
        
    }];
}
@end
