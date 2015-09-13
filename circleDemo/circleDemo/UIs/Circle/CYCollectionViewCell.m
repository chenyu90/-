//
//  CYCollectionViewCell.m
//  circleDemo
//
//  Created by apple on 15/9/12.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYCollectionViewCell.h"

@interface CYCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImage;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

@implementation CYCollectionViewCell

- (void)setModel:(CYCircleModel *)model
{
    _model = model;
    
    [_iconImage sd_setImageWithURL:[NSURL URLWithString:_model.cover]];
    
    _nameLabel.text= _model.title;

}

@end
