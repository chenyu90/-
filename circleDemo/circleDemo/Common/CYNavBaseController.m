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
    self.leftBtn.frame = CGRectMake(0, 20, 44, 44);
    [self.leftBtn addTarget:self action:@selector(backMethod) forControlEvents:UIControlEventTouchUpInside];
    
    [self.navView addSubview:self.leftBtn];
    
    self.rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.rightBtn.frame = CGRectMake(kUIScreenSize.width-60, 20, 44, 44);
    [self.rightBtn addTarget:self action:@selector(showLoginMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.navView addSubview:self.rightBtn];
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
