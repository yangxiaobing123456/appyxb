//
//  YXBMeViewController.m
//  app
//
//  Created by kpkj-ios on 15/8/3.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBMeViewController.h"
#import "YXBMessageViewController.h"
#import "Define.h"
#import "NSDate+Utilities.h"
#import "NSDate+Addition.h"
#import "NSData+Encrypt.h"
#import "NSObject+Additions.h"
#import "NSString+UUID.h"
#import "PCLocationModel.h"
#import "MBProgressHUD+MJ.h"
#import "UIButton+CountDown.h"
#import "YXBTimeViewController.h"
@interface YXBMeViewController ()
{

    dispatch_source_t   timer;
    BOOL timeStart;

}
- (IBAction)push:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *pushBt;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftLayoutConstraint;
@property (weak, nonatomic) IBOutlet UIButton *goingBtn;
@property (weak, nonatomic) IBOutlet UIButton *didBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;
- (IBAction)goingBtn:(id)sender;
- (IBAction)didBtn:(id)sender;
- (IBAction)cancelBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *timeLb;
@end

@implementation YXBMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *popPre = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(popToPre)];
    self.navigationItem.rightBarButtonItem = popPre;
    
    self.leftLayoutConstraint.constant=YXBDEVICE_width/12;
    self.title=@"我";
    
    self.timeLb.layer.cornerRadius=10;
    self.timeLb.clipsToBounds=YES;
//    
//    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
//    
//    btn.backgroundColor=[UIColor redColor];
//    
//    btn.frame=CGRectMake(0, 0, 20, 20);
//    
//    self.myTextfield.rightViewMode=UITextFieldViewModeAlways;
//    self.myTextfield.rightView=btn;
    
    UIButton *btnError=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    [btnError addTarget:self action:@selector(tapOnError) forControlEvents:UIControlEventTouchUpInside];
    [btnError setBackgroundImage:[UIImage imageNamed:@"040"] forState:UIControlStateNormal];
    self.myTextfield.rightView=btnError;
    self.myTextfield.rightViewMode=UITextFieldViewModeAlways;
//
    //[self.pushBt setTitle:@"获取验证码" forState:UIControlStateNormal];
    

    
    //[MBProgressHUD showMessage:[[PCLocationModel location]objectForKey:@"city"]];
    
//    NSString *time=[NSDate currentDateStringWithFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
//    NSLog(@"%@", [NSString UUID]);
//    NSLog(@"%@",[NSDate date]);
//    
//    //NSString *time=[NSDate currentDateStringWithFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
//    
//    NSString *contents=@"南京叫个郎中健康科技公司";
//    
//    NSData *timeData = [contents dataUsingEncoding:NSUTF8StringEncoding];
//    
//    NSLog(@"----%@",timeData);
//    
//   
//    
//    
//    
//   
//    NSData *eData= [timeData encryptedWithAESUsingKey:@"text to encrypt" andIV:timeData];
//    
//    NSLog(@"------%@",eData);
//    
//    
//    
//    
//    NSData *dData=[eData decryptedWithAESUsingKey:@"text to encrypt" andIV:eData];
//    
//    NSLog(@"%@",dData);
//    
//    NSString *timeStr=[[NSString alloc] initWithData:dData encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@",timeStr);
    
    
    // Do any additional setup after loading the view from its nib.
}
-(void)popToPre
{
    YXBTimeViewController *ycbTimeVC=[[YXBTimeViewController alloc]init];
    
    [self.navigationController pushViewController:ycbTimeVC animated:YES];


}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    [PCLocationModel initLocation];
//    
//    NSLog(@"%@",[PCLocationModel location]);

//    NSDate *retainDate=[YXBUserDefaultsInfo YXBGetExpireDate];
//    
//    
//    
//    NSInteger retainTime= [retainDate minutesAfterDate:retainDate];
//    
//    if (retainTime>0) {
//        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:YES];
//        
//        timeStart = YES;
//
//    }
//    
    
    
    

}



- (IBAction)push:(id)sender {
    

    
       UIButton *btn=(UIButton *)sender;
//    [btn startGetMessage];
//
   // [btn time];
   // [btn startTime:20 title:@"获取验证码" waitTittle:@"后重试"];
    
//    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:YES];
//    
//    timeStart = YES;
//    
//    //NSDate *currentDare=[NSDate date];
//    
//    NSDate *expireDate=[NSDate dateWithMinutesFromNow:1];
//    
//    [YXBUserDefaultsInfo YXBSaveExpireDate:expireDate];
    

    //[self startTime:60];
    
    
//    YXBMessageViewController *messageVC=[[YXBMessageViewController alloc]init];
//    [self.navigationController pushViewController:messageVC animated:YES];
}
-(void)startTime:(NSInteger)time
{
    __block NSInteger timeout=time;
    double delayInSeconds = 1.0;
    timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0));
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC, 0.0);
    dispatch_source_set_event_handler(timer, ^{
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.timeLb.text=[NSString stringWithFormat:@"%ld",(long)timeout];
        });
        
        timeout--;
    });
    dispatch_resume(timer);
}

//此代码倒计时为60秒



//上面的代码加入到想开始计时的地方
//
//下面是回调方法

- (void)timerFireMethod:(NSTimer *)theTimer

{
    
    NSCalendar *cal = [NSCalendar currentCalendar];//定义一个NSCalendar对象
    
    NSDateComponents *endTime = [[NSDateComponents alloc] init];    //初始化目标时间...
    
    NSDate *today = [NSDate date];    //得到当前时间
    
    NSDate *date = [NSDate dateWithTimeInterval:900 sinceDate:today];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSString *dateString = [dateFormatter stringFromDate:date];
    
    static int year;
    
    static int month;
    
    static int day;
    
    static int hour;
    
    static int minute;
    
    static int second;
    
    if(timeStart) {//从NSDate中取出年月日，时分秒，但是只能取一次
        
        year = [[dateString substringWithRange:NSMakeRange(0, 4)] intValue];
        
        month = [[dateString substringWithRange:NSMakeRange(5, 2)] intValue];
        
        day = [[dateString substringWithRange:NSMakeRange(8, 2)] intValue];
        
        hour = [[dateString substringWithRange:NSMakeRange(11, 2)] intValue];
        
        minute = [[dateString substringWithRange:NSMakeRange(14, 2)] intValue];
        
        second = [[dateString substringWithRange:NSMakeRange(17, 2)] intValue];
        
        timeStart= NO;
        
    }
    
    
    
    [endTime setYear:year];
    
    [endTime setMonth:month];
    
    [endTime setDay:day];
    
    [endTime setHour:hour];
    
    [endTime setMinute:minute];
    
    [endTime setSecond:second];
    
    NSDate *todate = [cal dateFromComponents:endTime]; //把目标时间装载入date
    
    //用来得到具体的时差，是为了统一成北京时间
    
    unsigned int unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth| NSCalendarUnitDay| NSCalendarUnitHour| NSCalendarUnitMinute| NSCalendarUnitSecond;
    
    NSDateComponents *d = [cal components:unitFlags fromDate:today toDate:todate options:0];
    
    NSString *fen = [NSString stringWithFormat:@"%ld", (long)[d minute]];
    
    if([d minute] < 10) {
        
        fen = [NSString stringWithFormat:@"0%ld",(long)[d minute]];
        
    }
    
    NSString *miao = [NSString stringWithFormat:@"%ld", (long)[d second]];
    
    if([d second] < 10) {
        
        miao = [NSString stringWithFormat:@"0%ld",(long)[d second]];
        
    }
    
    
    if([d second] > 0) {
        
        NSLog(@"%@%@",fen,miao);
        self.timeLb.text=[NSString stringWithFormat:@"还剩%@分%@秒",fen,miao];
        
        //计时尚未结束，do_something
        
        
    } else if([d second] == 0) {
        
        
        
        //计时1分钟结束，do_something
        
        
        
    } else {
        
        [theTimer invalidate];
        
    }
    
    
    
}
- (IBAction)goingBtn:(id)sender {
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.leftLayoutConstraint.constant=YXBDEVICE_width/12;
        [self.view layoutIfNeeded];
        
    }];
    

}

- (IBAction)didBtn:(id)sender {
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.leftLayoutConstraint.constant=YXBDEVICE_width/3+YXBDEVICE_width/12;
        
        [self.view layoutIfNeeded];
        
    }];
    
    
}

- (IBAction)cancelBtn:(id)sender {
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.leftLayoutConstraint.constant=YXBDEVICE_width/3*2+YXBDEVICE_width/12;
        
        [self.view layoutIfNeeded];
        
    }];
    
    
}
@end
