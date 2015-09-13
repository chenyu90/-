//
//  CYHomeViewController.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYHomeViewController.h"
#import "CYHomeModel.h"



@interface CYHomeViewController ()

@property (nonatomic,strong) AFHTTPSessionManager *manager;

@property (nonatomic,strong) CYHomeModel *homeModel;

@end

@implementation CYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"首页";
    
//    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://www.qd-life.com/"]];
//    
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    CYHttpClient *manager = [CYHttpClient shareInstance];
    
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
    
    [manager GET:@"?anu=api/1/index/get_index_info" parameters:paramet success:^ void(NSURLSessionDataTask * data, id response) {
        
        CYLog(@"%@",response);
        
        _homeModel = [[CYHomeModel alloc] initWithDictionary:response error:nil];
        FocusListModel *listModel = _homeModel.focus;

        
    } failure:^ void(NSURLSessionDataTask * task, NSError * error) {
        
        CYLog(@"error = %@",error);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
