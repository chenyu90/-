//
//  CYBaseViewController.h
//  circleDemo
//
//  Created by apple on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYBaseViewController : UIViewController

- (void)showLoadingView;

- (void)hiddenLoadingView;

- (void)showErrorMessage:(NSString *)message;

- (void)showSuccessMessage:(NSString *)message;



@end
