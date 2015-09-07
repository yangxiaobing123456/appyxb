//
//  YXBContactsViewController.h
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBBaseViewController.h"

@interface YXBContactsViewController : YXBBaseViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTable;
@property (nonatomic,strong) NSMutableArray *dataInfoArray;
@property (weak, nonatomic) IBOutlet UILabel *nameLb;
@property (weak, nonatomic) IBOutlet UILabel *priceLb;
@property (weak, nonatomic) IBOutlet UILabel *timeLb;
@property (weak, nonatomic) IBOutlet UILabel *privilegeLb;
@property (weak, nonatomic) IBOutlet UILabel *praise;
@property (weak, nonatomic) IBOutlet UILabel *applyLb;
@property (weak, nonatomic) IBOutlet UILabel *effectLb;
@property (weak, nonatomic) IBOutlet UILabel *methodLb;
@property (weak, nonatomic) IBOutlet UIButton *continueBtn;
@property (weak, nonatomic) IBOutlet UIButton *didBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *btnLbBgConstraint;
- (IBAction)continue:(id)sender;
- (IBAction)did:(id)sender;
- (IBAction)cancel:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *myView;


@end
