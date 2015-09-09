//
//  AppDelegate.m
//  circleDemo
//
//  Created by apple on 15/9/8.
//  Copyright (c) 2015年 cc. All rights reserved.
//

#import "AppDelegate.h"
#import "CYHomeViewController.h"
#import "CYTabBarViewController.h"
#import "CYShakeViewController.h"
#import "CYXmppViewController.h"
#import "CYToolsViewController.h"
#import "CYCircleViewController.h"
#import "CYHotViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    self.tab = [[CYTabBarViewController alloc] init];
    
    CYHomeViewController *home = [sb instantiateViewControllerWithIdentifier:@"CYHomeViewController"];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:home];
    
    CYHotViewController *hot = [sb instantiateViewControllerWithIdentifier:@"CYHotViewController"];
    UINavigationController *hotNav = [[UINavigationController alloc] initWithRootViewController:hot];
    
    CYCircleViewController *circle = [sb instantiateViewControllerWithIdentifier:@"CYCircleViewController"];
    UINavigationController *circleNav = [[UINavigationController alloc] initWithRootViewController:circle];
    
    CYToolsViewController *tools = [sb instantiateViewControllerWithIdentifier:@"CYToolsViewController"];
    UINavigationController *toolsNav= [[UINavigationController alloc] initWithRootViewController:tools];
    
    self.tab.viewControllers = @[homeNav,hotNav,circleNav,toolsNav];
    
    self.window.rootViewController = self.tab;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
