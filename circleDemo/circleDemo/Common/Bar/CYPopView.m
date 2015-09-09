//
//  CYPopView.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYPopView.h"
#import "CYTabBarProtocol.h"
#import "CYTabBarProtocol.h"


@interface CYPopView ()<CYTabBarProtocol>



@end


@implementation CYPopView


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self initView];
    }
    return self;
}

- (void)initView
{
    UIImageView *bg = [[UIImageView alloc] initWithFrame:self.bounds];
    [self addSubview:bg];
    bg.image = [UIImage imageNamed:@"home_topbar"];
    
    // 添加button
    UIButton *shake = [CYFactory cy_buttonWithType:CYNormalButton withFrame:CGRectMake(0, 0, 156.0/640*kUIScreenSize.width, kUINavBarHeight) withTitle:@"摇一摇" withTag:5];
    [shake setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [shake addTarget:self action:@selector(changeVc:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:shake];
    
    UIButton *xmpp = [CYFactory cy_buttonWithType:CYNormalButton withFrame:CGRectMake(168.0/640*kUIScreenSize.width, 0, 150.0/640*kUIScreenSize.width, kUINavBarHeight) withTitle:@"联系商家" withTag:6];
    [xmpp setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [xmpp addTarget:self action:@selector(changeVc:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:xmpp];
    
    UIButton *online =[CYFactory cy_buttonWithType:CYNormalButton withFrame:CGRectMake(355.0/640*kUIScreenSize.width, 0, 93.0/640*kUIScreenSize.width, kUINavBarHeight) withTitle:@"周边" withTag:7];
    [online setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [online addTarget:self action:@selector(changeVc:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:online];
    

}


- (void)changeVc:(UIButton *)item
{
    if ([self.delegate respondsToSelector:@selector(didClickItem:)]) {
        [self.delegate didClickItem:item.tag];
    }
}

@end
