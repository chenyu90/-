//
//  RatingBar.h
//  MyRatingBar
//
//  Created by Ricky on 14-8-28.
//  Copyright (c) 2014年 Ricky. All rights reserved.
//



#import <UIKit/UIKit.h>

@interface RatingBar : UIView
@property (nonatomic,assign) NSInteger starNumber;
/*
 *调整底部视图的颜色
 */
@property (nonatomic,strong) UIColor *viewColor;

/*
 *是否允许可触摸
 */
@property (nonatomic,assign) BOOL enable;
@end
