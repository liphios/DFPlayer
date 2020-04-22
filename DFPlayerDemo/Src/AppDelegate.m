//
//  AppDelegate.m
//  DFPlayer
//
//  Created by ihoudf on 2017/7/18.
//  Copyright © 2017年 ihoudf. All rights reserved.
//

#import "AppDelegate.h"
#import "DFPlayerViewController.h"
#import "DFCacheViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    DFPlayerViewController *playerVC = [[DFPlayerViewController alloc] init];
    UINavigationController *playerNav = [[UINavigationController alloc] initWithRootViewController:playerVC];
    playerNav.title = @"音频";

    
    DFCacheViewController *mineVC = [[DFCacheViewController alloc] init];
    UINavigationController *mineNav = [[UINavigationController alloc] initWithRootViewController:mineVC];
    mineVC.title = @"缓存";
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor colorWithRed:66.0/255.0 green:196.0/255.0 blue:133.0/255.0 alpha:1]} forState:UIControlStateNormal];
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];

    tabbarVC.viewControllers = @[playerNav,mineNav];
    
    self.window.rootViewController = tabbarVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
