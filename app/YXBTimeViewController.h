//
//  YXBTimeViewController.h
//  app
//
//  Created by jglz on 15/9/6.
//  Copyright (c) 2015年 yxb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YXBTimeViewController : UIViewController<UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *myCollection;
- (IBAction)todayBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *tomorrowBtn;
- (IBAction)acquirtBtn:(id)sender;
- (IBAction)tomorrowBtn:(id)sender;

@end
