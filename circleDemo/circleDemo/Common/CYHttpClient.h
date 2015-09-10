//
//  CYHttpClient.h
//  circleDemo
//
//  Created by apple on 15/9/10.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "AFHTTPSessionManager.h"

// 网络请求类封装
@interface CYHttpClient : AFHTTPSessionManager

+ (CYHttpClient *)shareInstance;

@end
