//
//  IWNewFeatureCell.m
//  ItcastWeibo
//
//  Created by yz on 15/7/6.
//  Copyright (c) 2015年 杨小兵. All rights reserved.
//

#import "IWNewFeatureCell.h"
#import "AppDelegate.h"
//#import "IWTabBarController.h"
static NSString * const reuseIdentifier = @"Cell";
static UICollectionView *_collectionView = nil;
@interface IWNewFeatureCell()

@property (nonatomic, weak) UIImageView *imageView;


@property (nonatomic, weak) UIButton *startBtn;

@end

@implementation IWNewFeatureCell



- (UIButton *)startBtn
{
    if (_startBtn == nil) {
        UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        startBtn.frame=CGRectMake(0, 0, 200, 100);
        startBtn.center = CGPointMake(self.frame.size.width* 0.5, self.frame.size.height * 0.85);
        [startBtn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:startBtn];
        _startBtn = startBtn;
    }
    return _startBtn;
}

- (UIImageView *)imageView
{
    if (_imageView == nil) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _imageView = imageView;
        [self addSubview:imageView];
    }
    return _imageView;
}

- (void)setImageName:(NSString *)imageName
{
    _imageName = imageName;
    
    NSString *path=[[NSBundle mainBundle]pathForResource:_imageName ofType:@"png"];
    
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    self.imageView.image = image;
}

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath
{
    // 注册UICollectionViewCell
    if (_collectionView == nil) {
        _collectionView = collectionView;
        [collectionView registerClass:[IWNewFeatureCell class] forCellWithReuseIdentifier:reuseIdentifier];
    }
    
    return [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
}

- (void)setIndexPath:(NSIndexPath *)indexPath pagecount:(NSInteger)pagecount
{
    if (indexPath.row == pagecount - 1) { // 最后一页
        // 添加分享
       // [self shareBtn];
        // 添加开始微博
        [self startBtn];
    }
}

- (void)start
{
    // 进入首页

    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
     NSString *currentVersion=[NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
    [[NSUserDefaults standardUserDefaults]setObject:currentVersion forKey:@"Version"];
   // [app gotoAccount];
    
}



@end
