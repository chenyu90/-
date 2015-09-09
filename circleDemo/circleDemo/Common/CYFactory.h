//
//  CYFactory.h
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum
{
    CYNormalButton ,
    CYCornerButton
}CYButtonType;

@interface CYFactory : NSObject

+ (UIButton *)cy_buttonWithType:(CYButtonType)type
                      withFrame:(CGRect)rect
                      withTitle:(NSString *)title
                        withTag:(NSInteger)tag;




@end
