//
//  CYTabBarViewController.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYTabBarViewController.h"
#import "CYTabView.h"
#import "CYTabBarProtocol.h"
#import "CYPopView.h"

@interface CYTabBarViewController ()<CYTabBarProtocol>

@property (nonatomic,strong) CYTabView *tabBarView;

@property (nonatomic,strong) CYPopView *popView;

@end

@implementation CYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 自定义tabBarView和popView
    _tabBarView = [[CYTabView alloc] initWithFrame:CGRectMake(0, kUIScreenSize.height-kUITabBarHeight, kUIScreenSize.width, kUITabBarHeight)];
    
    _tabBarView.delegate = self;

    [self.view addSubview:self.tabBarView];
    

    
    // 创建popView
    self.popView = [[CYPopView alloc] initWithFrame:CGRectMake(0, kUIScreenSize.height-kUITabBarHeight-kUINavBarHeight, kUIScreenSize.width, kUINavBarHeight)];
    self.popView.backgroundColor = [UIColor clearColor];
    self.popView.hidden = YES;
    self.popView.delegate = self;
    [self.view addSubview:self.popView];
    
    
    
}

//- (void)changeVc:(UIButton *)item
//{
//    [self.tabBarView.subviews enumerateObjectsUsingBlock:^(UIButton *btn, NSUInteger idx, BOOL *stop) {
//       
//        btn.selected = NO;
//        
//    }];
//    item.selected = YES;
//    
//    CYLog(@"%zd",item.tag);
//    
//    // 显示popView
//    if (item.tag == 4) {
//        self.popView.hidden = !self.popView.hidden;
//    }else{
//        self.popView.hidden = YES;
//    }
//    
//}

- (void)didClickItem:(NSInteger)index
{
    
    
    if (index<4) {
        self.selectedIndex = index;
        self.popView.hidden = YES;
    }else if (index == 4){
        self.popView.hidden =!self.popView.hidden;
    }else{
        self.selectedIndex = index;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
