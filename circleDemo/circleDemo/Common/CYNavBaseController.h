//
//  CYNavBaseController.h
//  circleDemo
//
//  Created by apple on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYBaseViewController.h"

@interface CYNavBaseController : CYBaseViewController

@property (nonatomic,strong) UIView *navView;

@property (nonatomic,strong) UIButton *leftBtn;

@property (nonatomic,strong) UIButton *rightBtn;

@property (nonatomic,strong) UILabel *titleLabel;

// 左边按钮方法
- (void)backMethod;

- (void)showLoginMethod;

@end
