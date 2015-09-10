//
//  CYHttpClient.m
//  circleDemo
//
//  Created by apple on 15/9/10.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYHttpClient.h"

@implementation CYHttpClient

+ (CYHttpClient *)shareInstance
{
    static CYHttpClient *client = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CYHttpClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://www.qd-life.com/"]];
        
        client.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    });
    return client;
}

@end
