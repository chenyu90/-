//
//  CYNewsViewController.m
//  circleDemo
//
//  Created by apple on 15/9/12.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "CYNewsViewController.h"

@interface CYNewsViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CYNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&src=webview",self.urlStr]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
    self.webView.scalesPageToFit = YES;
    
}

- (void)backMethod
{
    [self.navigationController popViewControllerAnimated:YES];
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    [app.tab pushHidden:NO];
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

@end
