//
//  CYTabView.h
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CYTabBarProtocol;

@interface CYTabView : UIView

@property (nonatomic,weak) id<CYTabBarProtocol> delegate;

@end
