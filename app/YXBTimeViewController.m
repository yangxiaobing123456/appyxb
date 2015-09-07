//
//  YXBTimeViewController.m
//  app
//
//  Created by jglz on 15/9/6.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import "YXBTimeViewController.h"
#import "YXBbTNCollectionViewCell.h"
#import "Define.h"
@interface YXBTimeViewController ()
@property (nonatomic, retain)NSMutableArray *timeArr;

@end

@implementation YXBTimeViewController
-(NSMutableArray *)timeArr
{
    if (!_timeArr) {
        
        _timeArr=[[NSMutableArray alloc]initWithObjects:@[@"10:00",@"10:30",@"11:00",@"11:30"],@[@"12:00",@"12:30",@"13:00",@"13:30"],@[@"14:00",@"14:30",@"15:00",@"15:30"],@[@"16:00",@"16:30",@"17:00",@"17:30"],@[@"18:00",@"18:30",@"19:00",@"19:30"],@[@"20:00",@"20:30",@"21:00",@"21:30"], nil];
        
    }
    return _timeArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.myCollection registerClass:[YXBbTNCollectionViewCell class] forCellWithReuseIdentifier:@"GradientCell"];

    [self.myCollection registerNib:[UINib nibWithNibName:@"YXBbTNCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"GradientCell"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Collection View Data Source
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    NSMutableArray * arrcount=self.timeArr[section];
    return arrcount.count;
    
}
-( NSInteger )numberOfSectionsInCollectionView:( UICollectionView *)collectionView

{
    return self.timeArr.count;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString * CellIdentifier = @"GradientCell";
    static NSString *collectionCellID = @"GradientCell";
    YXBbTNCollectionViewCell *cell = (YXBbTNCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionCellID forIndexPath:indexPath];
    NSMutableArray * arrcount=self.timeArr[indexPath.section];
    cell.timeLb.text=arrcount[indexPath.row];
    return cell;
}

//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(60, 40);
}

//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

#pragma mark --UICollectionViewDelegate

//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    YXBLog(@"%@=======%@",@(indexPath.row),@(indexPath.section));
    cell.backgroundColor = [UIColor whiteColor];
}

//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)todayBtn:(id)sender {
    
    [self.myCollection reloadData];
    
}
- (IBAction)acquirtBtn:(id)sender {
    [self.myCollection reloadData];
}

- (IBAction)tomorrowBtn:(id)sender {
}
@end
