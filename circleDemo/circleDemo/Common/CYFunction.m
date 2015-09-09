//
//  CYFunction.m
//  circleDemo
//
//  Created by apple on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYFunction.h"

@implementation CYFunction

+(NSString *)getTimeScamp
{
    return [NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970]];
}


+ (NSString *)MD5StringFromArray:(NSArray *)array
{
    NSMutableString *mutableStr = [NSMutableString string];
    [array enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop) {
        
        [mutableStr appendString:str];
        
    }];
    
    return [MD5 MD5Encrypt:mutableStr];
}

@end
