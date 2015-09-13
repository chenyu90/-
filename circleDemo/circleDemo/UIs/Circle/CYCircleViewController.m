//
//  CYCircleViewController.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYCircleViewController.h"
#import "CYCircleModel.h"
#import "CYCollectionViewCell.h"

@interface CYCircleViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *clollectionView;

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;

@property (nonatomic,strong) CYCircleListModel *listModel;

@end

@implementation CYCircleViewController

static NSString *ID = @"CYCollectionViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"圈子";
    
    self.flowLayout.itemSize = CGSizeMake(kUIScreenSize.width/5, kUIScreenSize.width/4);
    self.flowLayout.sectionInset = UIEdgeInsetsMake(-20, 15, 0, 15);
    
    self.flowLayout.minimumLineSpacing = 5;

    
//    [self.clollectionView registerClass:[CYCollectionViewCell class] forCellWithReuseIdentifier:ID];
    
    [self.clollectionView registerNib:[UINib nibWithNibName:@"CYCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:ID];
    
    
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    
    [param setObject:[CYFunction getTimeScamp] forKey:@"time"];
    [param setObject:APP_ID forKey:@"app_id"];
    
    NSArray *array = @[APP_ID,param[@"time"],APP_KEY];
    
    [param setObject:[CYFunction MD5StringFromArray:array] forKey:@"sign"];
    
//    [manager GET:@"/api/1/group/get_group_list" parameters:param success:^(NSURLSessionDataTask * task, id response) {
//        
//        NSLog(@"%@",response);
//        
//    } failure:^(NSURLSessionDataTask * task, NSError * error) {
//        
//    }];
    
    [CYHttpClient CYGET:@"/api/1/group/get_group_list" paramter:param SuccessBlock:^(id data) {
        
        CYLog(@"%@",data);
        
        self.listModel = [[CYCircleListModel alloc] initWithDictionary:data error:nil];
        
        [self.clollectionView reloadData];
        
    } failedBlock:^(NSError *failed) {
        
    } errorBlock:^(id error) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.listModel.list.count;
    
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CYCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
//    if (!cell) {
//        cell = [[[UINib nibWithNibName:@"CYCollectionViewCell" bundle:nil]instantiateWithOwner:self options:nil]lastObject];
//    }
    
    cell.model = self.listModel.list[indexPath.row];
    
    return cell;
}



@end
