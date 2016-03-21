//
//  AppDelegate.m
//  KVO
//
//  Created by saintPN on 15/4/19.
//  Copyright (c) 2015年 saintPN. All rights reserved.
//

#import "AppDelegate.h"
#import "AppStatusWatcher.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.watcher = [AppStatusWatcher new];
    [self addObserver:self.watcher forKeyPath:@"appStatus" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"望咩望"];
    self.appStatus = @"launch";
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    self.appStatus = @"inactive";
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    self.appStatus = @"background";
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    self.appStatus = @"inactive";
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    self.appStatus = @"active";
}

- (void)applicationWillTerminate:(UIApplication *)application {
    self.appStatus = @"terminate";
    
}
@end