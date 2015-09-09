//
//  CYTabView.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYTabView.h"
#import "CYTabBarProtocol.h"

@implementation CYTabView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}

- (void)setupView
{
    for (NSInteger i=0; i<5; i++) {
        
        UIButton *item = [UIButton buttonWithType:UIButtonTypeCustom];
        item.frame = CGRectMake(i*(kUIScreenSize.width)/5, 0, kUIScreenSize.width/5, kUITabBarHeight);
        NSString *normal = [NSString stringWithFormat:@"home_%zd",i];
        [item setBackgroundImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
        NSString *select = [NSString stringWithFormat:@"home_%zd_pressed",i];
        [item setBackgroundImage:[UIImage imageNamed:select] forState:UIControlStateSelected];
        item.tag = i;
        
        [self addSubview:item];
        
        if (i == 0) {
            item.selected = YES;
        }
        [item addTarget:self action:@selector(changeVc:) forControlEvents:UIControlEventTouchUpInside];
    }

}

- (void)changeVc:(UIButton *)item
{
    [self.subviews enumerateObjectsUsingBlock:^(UIButton *btn, NSUInteger idx, BOOL *stop) {
        
        btn.selected = NO;
        
    }];
    item.selected = YES;
    
    
    // 显示popView
    if ([_delegate respondsToSelector:@selector(didClickItem:)]) {
        [_delegate didClickItem:item.tag];
    }
}

@end
