//
//  AppDelegate.h
//  KVO
//
//  Created by saintPN on 15/4/19.
//  Copyright (c) 2015年 saintPN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppStatusWatcher.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSString *appStatus;

@property (strong, nonatomic) AppStatusWatcher *watcher;

@end

