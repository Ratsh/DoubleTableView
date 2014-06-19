//
//  AppDelegate.m
//  TableViewPain
//
//  Created by Admin on 18.06.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"
#import "DualTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [DualTableViewController new];
    
    return YES;
}


@end
