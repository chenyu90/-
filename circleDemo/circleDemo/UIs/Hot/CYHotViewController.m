//
//  CYHotViewController.m
//  circleDemo
//
//  Created by mac on 15/9/9.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYHotViewController.h"
#import "CYNewsViewController.h"

@interface CYHotViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CYHotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"新闻";
    NSURL *url = [NSURL URLWithString:@"http://www.qd-life.com/news&src=webview"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
    self.webView.scalesPageToFit = YES;
    
}

#pragma mark - 

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    
    if ([request.URL.absoluteString isEqualToString:@"about:black"]) {
        return NO;
    }else if ([request.URL.absoluteString isEqualToString:@"http://www.qd-life.com/news&src=webview"]){
        return YES;
    }else{
        
        // 跳转新闻页面
        CYNewsViewController *newsVc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CYNewsViewController"];
        
        newsVc.urlStr = request.URL.absoluteString;
        
        CYLog(@"%@",request.URL.absoluteString);
        [self.navigationController pushViewController:newsVc animated:YES];
        // 隐藏tabBar
        AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
        
        [app.tab pushHidden:NO];
        
        // YES:跳转到系统的网页
        return NO;
    }
    
    return YES;
}



@end
