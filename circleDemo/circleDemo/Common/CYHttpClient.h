//
//  CYHttpClient.h
//  circleDemo
//
//  Created by apple on 15/9/10.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

typedef void(^successBlock)(id data);

typedef void(^failedBlcok)(NSError *failed);

typedef void(^errorBlock)(id error);


// 网络请求类封装
@interface CYHttpClient : AFHTTPSessionManager

+ (CYHttpClient *)shareInstance;

// GET请求

+ (void)CYGET:(NSString *)url
     paramter:(NSDictionary *)param
    SuccessBlock:(successBlock)successBlock
  failedBlock:(failedBlcok)failedBlock
   errorBlock:(errorBlock)errorBlock;


@end
