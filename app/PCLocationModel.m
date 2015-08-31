//
//  PCLocationModel.m
//  PNCMobileBank
//
//  Created by 丁丁 on 14-11-4.
//  Copyright (c) 2014年 张瑞. All rights reserved.
//

#import "PCLocationModel.h"
#import "Define.h"
#import <CoreLocation/CoreLocation.h>

@interface PCLocationModel ()<CLLocationManagerDelegate>

@property (nonatomic,strong) CLLocationManager *locationManager;

@end

@implementation PCLocationModel

+ (PCLocationModel *)sharedModel{
    static PCLocationModel *sharedModel = nil;
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken, ^{
        sharedModel = [[self alloc] init];
    });
    return sharedModel;
}

-(id)init{
    
    if (self =[super init]) {
        
        //上一次定位信息
        self.location =[PCLocationModel getLastLocation];
        if (self.location ==nil) {
            self.location =DefaultLocation;
            self.lastUpdataTime =[NSDate date];
        }
    }
    return self;
}

-(void)initLocation{
    
    //如果上一次定位时间为空，或与上一次定位时间间隔相差30分钟
//    if (self.lastUpdataTime ==nil || [self.lastUpdataTime timeIntervalSinceDate:[NSDate date]] >30 *60 ) {
    
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];//创建位置管理器
    locationManager.delegate=self;
    locationManager.desiredAccuracy=kCLLocationAccuracyBest;
    locationManager.distanceFilter=1000.0f;
    if (PNCisIOS8Later) {
        [locationManager requestWhenInUseAuthorization];
    }
    self.locationManager =locationManager;
    
    //启动位置更新
    [self.locationManager startUpdatingLocation];
//    }
}


#pragma mark -CLLocationManagerDelegate

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSString *strLatitude =[NSString stringWithFormat:@"%.6f",newLocation.coordinate.latitude];;
    NSString *strLongitude =[NSString stringWithFormat:@"%.6f",newLocation.coordinate.longitude];
    
    //定位城市通过CLGeocoder
    CLGeocoder * geoCoder = [[CLGeocoder alloc] init];
    [geoCoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray *placemarks, NSError *error) {
        YXBLog(@"%@",placemarks);
        
        for (CLPlacemark * placemark in placemarks) {
            
            NSString *strCityName = [placemark locality];
            NSDictionary *addressDictionary=[placemark addressDictionary];
            NSDictionary *dictLast =[PCLocationModel getLastLocation];
            
            self.location =@{@"city":strCityName,@"latitude":strLatitude,@"longitude":strLongitude,@"addressDictionary":addressDictionary};
            self.lastUpdataTime =[NSDate date];
            
            //如果存储上次定位为空
            if (dictLast ==nil) {
                
                [PCLocationModel saveLastLocation:self.location];
            }else{
                NSString *strLastCityName =[dictLast objectForKey:@"city"];
                if (![strCityName isEqualToString:strLastCityName]) {
                    
                    NSString *strMessage =[NSString stringWithFormat:@"尊敬的客户您好，您当前已经进入%@，是否设置为默认城市",strCityName];
                    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"提示" message:strMessage delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"同意", nil];
                    alert.tag =100;
                    [alert show];
                }else{
                    [PCLocationModel saveLastLocation:self.location];
                }
            }
            [[NSNotificationCenter defaultCenter] postNotificationName:LocationUpdataNotification object:self.location];
        }
    }];
    [self.locationManager stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    if(error.code == kCLErrorDenied){
        NSString *strAppName =[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
        NSString *title=[NSString stringWithFormat:@"请在系统设置中打开\"隐私->定位服务\"来允许\"%@\"来确定您的位置。",strAppName];
        YXBAlertView(@"定位服务未开启", title);
        
    }
    [self.locationManager stopUpdatingLocation];
}


#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView.tag ==100) {
        
        if (buttonIndex ==1) {
            
            [PCLocationModel saveLastLocation:self.location];
        }
    }
}

+(void)initLocation{
    
    [[PCLocationModel sharedModel]  initLocation];
}

//获取信息
+(NSDictionary *)location{
    
    [[PCLocationModel sharedModel] initLocation];
    
    return [[PCLocationModel sharedModel] location];
}

+(NSDictionary *)getLastLocation{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *dict =[userDefaults objectForKey:@"LastLocation"];
    return dict;
}

+(void)saveLastLocation:(NSDictionary *)location{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:location forKey:@"LastLocation"];
    [userDefaults synchronize];
}

@end
