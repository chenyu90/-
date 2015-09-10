//
//  CYNavBaseController.m
//  circleDemo
//
//  Created by apple on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYNavBaseController.h"


@interface CYNavBaseController ()

@end

@implementation CYNavBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置导航view
    self.navView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,kUIScreenSize.width, kUINavHeight)];
    self.navView.backgroundColor = [UIColor colorWithRed:0/255.0 green:128/255.0 blue:128/255.0 alpha:1];
    [self.view addSubview:self.navView];
    
    self.leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.leftBtn.frame = CGRectMake(0, 20, kUINavBarHeight, kUINavBarHeight);
    [self.leftBtn setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    [self.leftBtn addTarget:self action:@selector(backMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.navView addSubview:self.leftBtn];
    
    self.rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [self.rightBtn addTarget:self action:@selector(showLoginMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.navView addSubview:self.rightBtn];
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.font = [UIFont systemFontOfSize:20];
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.text = @"首页";
    [self.navView addSubview:self.titleLabel];
    
    self.navigationController.navigationBarHidden = YES;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGSize size = [self.titleLabel.text boundingRectWithSize:CGSizeZero options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]} context:nil].size;
    
    self.titleLabel.frame = CGRectMake((kUIScreenSize.width - size.width)*0.5, 30, size.width, size.height);
    
    if (NO) {
        self.rightBtn.frame = CGRectMake(kUIScreenSize.width-kUINavBarHeight, 20, kUINavBarHeight, kUINavBarHeight);
        [self.rightBtn setBackgroundImage:[UIImage imageNamed:@"nav_user"] forState:UIControlStateNormal];
    }else{
        [self.rightBtn setTitle:@"登录/注册" forState:UIControlStateNormal];
        
        self.rightBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        self.rightBtn.frame = CGRectMake(kUIScreenSize.width-kUINavBarHeight*2, 20, kUINavBarHeight*2, kUINavBarHeight);
        [self.rightBtn setBackgroundImage:nil forState:UIControlStateNormal];
    }
    
}


- (void)backMethod
{
    CYLog(@"backMethod");
}

- (void)showLoginMethod
{
    CYLog(@"showLoginMethod");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
