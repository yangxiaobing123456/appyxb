//
//  IWNewFeatureController.m
//  ItcastWeibo
//
//  Created by yz on 15/7/6.
//  Copyright (c) 2015年 杨小兵. All rights reserved.
//

#import "IWNewFeatureController.h"
#import "IWNewFeatureCell.h"
#import <Availability.h>
#import "Define.h"
#import "YXBNewFeatureCollectionViewCell.h"
#define IWNewFeatureCount 4
#import "YXBfindTableViewCell.h"
@interface IWNewFeatureController ()
@property (nonatomic, weak) UIPageControl *pageControl;
@end

@implementation IWNewFeatureController


- (instancetype)init
{

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.itemSize = CGSizeMake(YXBDEVICE_width, YXBDEVICE_height-64);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumLineSpacing = 0;
    
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 取消滚动条
    [self.collectionView registerNib:[UINib nibWithNibName:@"YXBNewFeatureCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"GradientCell"];
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.pagingEnabled = YES;
    self.collectionView.bounces = NO;
    
    // 添加padgeController
    [self setUpPadgeController];

}

- (void)setUpPadgeController
{
    
    UIPageControl *page = [[UIPageControl alloc] init];
    page.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height);
    page.numberOfPages = IWNewFeatureCount;
    page.currentPageIndicatorTintColor = [UIColor redColor];
    page.pageIndicatorTintColor = [UIColor blackColor];
    _pageControl = page;
    [self.view addSubview:page];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger page = scrollView.contentOffset.x / scrollView.frame.size.width + 0.5;
    
    _pageControl.currentPage = page;
    
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return IWNewFeatureCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    // 创建cell
    static NSString *collectionCellID = @"GradientCell";
    YXBNewFeatureCollectionViewCell *cell = (YXBNewFeatureCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionCellID forIndexPath:indexPath];

    if (indexPath.row==0) {
        cell.myTab.backgroundColor=[UIColor redColor];
        
    }else
    {
        cell.myTab.backgroundColor=[UIColor yellowColor];
    }
    NSLog(@"%ld_____%ld",(long)indexPath.row,(long)indexPath.section);
    
    return cell;
//    IWNewFeatureCell *cell = [IWNewFeatureCell cellWithCollectionView:collectionView indexPath:indexPath];
//    
//    // Configure the cell
//    NSString *imageName = [NSString stringWithFormat:@"welcome-1-%ld",(long)indexPath.row + 1];
//    
//    if (self.view.frame.size.height==568) {
//        imageName = [imageName stringByAppendingString:@"-568h"];
//    }
//
//
//    cell.imageName = imageName;
//    
//    [cell setIndexPath:indexPath pagecount:IWNewFeatureCount];
//    
//    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 100;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIndexField=@"cell";
    
    YXBfindTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIndexField];
    
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"YXBfindTableViewCell" owner:self options:nil][0];
    }
    return cell;

}

@end
