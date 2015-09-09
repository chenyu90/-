//
//  CYHomeViewController.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYHomeViewController.h"

#define APP_ID @"1001"
#define APP_KEY @"5bV9JhaMn2GJ5MZe"

@interface CYHomeViewController ()

@property (nonatomic,strong) AFHTTPSessionManager *manager;

@end

@implementation CYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"首页";
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:nil]];
    
    NSMutableDictionary *paramet = [NSMutableDictionary dictionary];
    
    
    
    [paramet setObject:@"120.30" forKey:@"lon"];
    [paramet setObject:@"36.06" forKey:@"lat"];
    
    // 时间撮
    [paramet setObject:[CYFunction getTimeScamp] forKey:@"time"];
    [paramet setObject:APP_ID forKey:@"app_id"];
    
    // 加密
    NSArray *array = @[APP_ID,paramet[@"lon"],paramet[@"lat"],paramet[@"time"],APP_KEY];
    
    NSString *sign = [CYFunction MD5StringFromArray:array];
    
    [paramet setObject:sign forKey:@"sign"];
    
    [manager GET:@"http://www.qd-life.com/?anu=api/1/index/get_index_info" parameters:paramet success:^ void(NSURLSessionDataTask * data, id response) {
        
        CYLog(@"%@",data);
        
    } failure:^ void(NSURLSessionDataTask * task, NSError * error) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
