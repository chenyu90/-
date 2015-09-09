//
//  CYFactory.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYFactory.h"

@implementation CYFactory

+ (UIButton *)cy_buttonWithType:(CYButtonType)type withFrame:(CGRect)rect withTitle:(NSString *)title withTag:(NSInteger)tag
{
    UIButton *item = [UIButton buttonWithType:UIButtonTypeCustom];
    item.frame = rect;
    [item setTitle:title forState:UIControlStateNormal];
    item.tag = tag;
    
    if (type == CYNormalButton) {
        
    }else if (type == CYCornerButton){
        item.layer.cornerRadius = 5;
    }
    return item;
}

@end
