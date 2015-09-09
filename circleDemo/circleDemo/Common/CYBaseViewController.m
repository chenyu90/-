//
//  CYBaseViewController.m
//  circleDemo
//
//  Created by apple on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYBaseViewController.h"

@interface CYBaseViewController ()

@end

@implementation CYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)showLoadingView
{
    CYLog(@"showLoadingView");
    
}

- (void)hiddenLoadingView
{
    CYLog(@"hiddenLoadingView");
}

- (void)showErrorMessage:(NSString *)message
{
    [self.view makeToast:message];
}

- (void)showSuccessMessage:(NSString *)message
{
    [self.view makeToast:message];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
