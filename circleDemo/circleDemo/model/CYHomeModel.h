//
//  CYHomeModel.h
//  circleDemo
//
//  Created by apple on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "JSONModel.h"
#import <Foundation/Foundation.h>
@class FamousListModel,FocusListModel,GroupListModel,GuessListModel;
@protocol FamousModel,FocusModel,GroupModel,GuessModel;

@interface CYHomeModel : JSONModel

@property (nonatomic,strong) FamousListModel *famous;

@property (nonatomic,strong) FocusListModel *focus;

@property (nonatomic,strong) GroupListModel *group;

@property (nonatomic,strong) GuessListModel *guess;

@end

// 名店推荐
@interface FamousListModel : JSONModel

@property (nonatomic,strong) NSArray<FamousModel> *list;

@end

@interface FamousModel : JSONModel

@property (nonatomic,copy) NSString *cover;
@property (nonatomic,copy) NSString *distance;
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString *intro;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int score;
@end


// 广告图片
@interface FocusListModel : JSONModel

@property (nonatomic,strong) NSArray<FocusModel> *list;

@end


@interface FocusModel : JSONModel

@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString *cover;
@property (nonatomic,copy) NSString *link;
@property (nonatomic,copy) NSString *res_id;
@property (nonatomic,copy) NSString *res_name;
@property (nonatomic,copy) NSString *title;

@end

// 分组模型
@interface GroupListModel : JSONModel

@property (nonatomic,strong) NSArray<GroupModel> *list;
@end

@interface GroupModel :JSONModel

@property (nonatomic,copy) NSString *cover;

@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString *title;

@end

// 猜你喜欢
@interface GuessListModel : JSONModel

@property (nonatomic,strong) NSArray<GuessModel> *list;

@end

@interface GuessModel : JSONModel
@property (nonatomic,copy) NSString *cover;
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString *intro;
@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *title;

@end


/*
 famous =     {
 list =         (
 {
 cover = "http://www.qd-life.com/static/upload/2015/04/09/index_20150409153830000000_1_92289_57.jpg";
 distance = 15km;
 id = 3225;
 intro = "\U4e00\U5bb6\U7279\U8272\U70d8\U7119\U8fde\U9501\U4f01\U4e1a\Uff0c\U4e3b\U8425\U4e1a\U52a1...";
 name = "\U9ea6\U4e50\U6ecb\U86cb\U7cd5\U5e97";
 score = 0;
 },
 {
 cover = "http://www.qd-life.com/static/upload/2015/04/08/index_20150408153820000000_1_98894_50.jpg";
 distance = 32km;
 id = 3169;
 intro = "\U5e97\U5185\U73af\U5883\U5e72\U51c0\U6574\U6d01\Uff0c\U4ef7\U683c\U5b9e\U60e0\Uff0c\U5473...";
 name = "\U857e\U68ee\U5c45\U7f8e\U98df\U57ce";
 score = 0;
 },
 {
 cover = "http://www.qd-life.com/static/upload/2015/04/03/index_20150403135622000000_1_109155_62.jpg";
 distance = 32km;
 id = 3083;
 intro = "\U4ee5\U5241\U8fa3\U6912\U7684\U201c\U54b8\U201d\U548c\U201c\U8fa3\U201d\U6c81\U5165\U9c7c...";
 name = "\U6e14\U7c73\U4e4b\U6e58\U65b0\U6982";
 score = 0;
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/12/26/index_20141226104752000000_1_895455_62.jpg";
 distance = 4km;
 id = 46;
 intro = "\U4e3b\U8981\U7ecf\U8425\U7279\U8272\U79d8\U5236\U70e4\U8089\Uff0c\U72ec\U5bb6\U79d8\U65b9...";
 name = "\U96c5\U535a\U6e21\U8089\U4e32\U738b";
 score = 0;
 }
 );
 };
 focus =     {
 list =         (
 {
 cover = "http://www.qd-life.com/static/upload/2015/08/28/middle_20150828161220000000_1_232165_6.jpg";
 id = 281;
 link = "http://www.qd-life.com/news/detail?id=1839";
 "res_id" = 1839;
 "res_name" = news;
 title = "\U201c\U91d1\U5730\U2022\U60a6\U5cf0\U201d\U65b0\U54c1\U53d1\U5e03\U4f1a\U5320\U5fc3\U7efd\U653e";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2015/08/27/middle_20150827171931000000_1_198147_58.jpg";
 id = 280;
 link = "http://www.qd-life.com/news/detail?id=1838";
 "res_id" = 1838;
 "res_name" = news;
 title = "\U8dc3\U9f99\U95e8\U5f00\U95e8\U7eb3\U5ba2\Uff0c\U6709\U68a6\U4f60\U5c31\U6765\Uff01";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2015/08/19/middle_20150819150652000000_1_159126_89.jpg";
 id = 278;
 link = "http://www.qd-life.com/news/detail?id=1837";
 "res_id" = 1837;
 "res_name" = news;
 title = "\U516c\U53f8\U6ce8\U518c\U4e86\U8865\U8d34\U600e\U4e48\U9886\Uff1f";
 }
 );
 };
 group =     {
 list =         (
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170523000000_1_2877_100.png";
 id = 1;
 title = "\U7f8e\U5bbf";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170512000000_1_5772_92.png";
 id = 2;
 title = "\U5065\U5eb7";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170424000000_1_3809_45.png";
 id = 4;
 title = "\U626b\U8d27";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170340000000_1_7196_45.png";
 id = 6;
 title = "\U54c1\U724c";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170451000000_1_4055_25.png";
 id = 3;
 title = "\U6c7d\U8f66";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170311000000_1_4343_73.png";
 id = 7;
 title = "\U6559\U80b2";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2014/11/30/20141130170245000000_1_2844_66.png";
 id = 8;
 title = "\U91d1\U878d";
 },
 {
 cover = "http://www.qd-life.com/images/m/icons/icon-more.png";
 id = 0;
 title = "\U66f4\U591a";
 }
 );
 };
 guess =     {
 list =         (
 {
 cover = "http://www.qd-life.com/static/upload/2015/06/23/index_20150623103654000000_1_52741_43.jpg";
 id = 217;
 intro = "\U9ed1\U849c\U539f\U4ef7106\U5143/\U6876\Uff0c\U73b0\U4ef788\U5143/\U6876\U3002";
 price = "88.00";
 title = "\U65b0\U519c\U76df\U9ed1\U849c";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2015/05/07/index_20150507124255000000_1_55342_99.jpg";
 id = 170;
 intro = "\U539f\U4ef742\U5143/200g\Uff0c\U73b0\U4ef7\U53ea\U970014.8\U5143\Uff0c\U8fd8\U7b49\U4ec0\U4e48\Uff0c\U901f\U901f\U62a2\U8d2d\U5427\Uff01";
 price = "14.80";
 title = "\U70ad\U70e4\U9c7f\U9c7c\U8db3\U7247";
 },
 {
 cover = "http://www.qd-life.com/static/upload/2015/03/17/index_20150317110153000000_1_51555_49.jpg";
 id = 89;
 intro = "\U56e2\U8d2d\U4ef7\U683c\Uff1a300\U5143/\U7bb1\Uff08\U6bcf\U7bb130\U4e2a\Uff09 ";
 price = "300.00";
 title = "\U83f2\U7f8e\U679c\U56ed-\U725b\U6cb9\U679c";
 }
 );
 };
 status = success;
 }

 */