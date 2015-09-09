//
//  ViewController.m
//  circleDemo
//
//  Created by apple on 15/9/8.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self showErrorMessage:@"加载失败"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
