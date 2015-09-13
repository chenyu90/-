//
//  CYCircleModel.h
//  circleDemo
//
//  Created by apple on 15/9/12.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "JSONModel.h"

@protocol CYCircleModel;

@interface CYCircleModel : JSONModel

@property (nonatomic,copy) NSString *cover;

@property (nonatomic,assign) int id;

@property (nonatomic,copy) NSString *title;

@end



@interface CYCircleListModel : JSONModel

@property (nonatomic,strong) NSArray<CYCircleModel> *list;

@end

