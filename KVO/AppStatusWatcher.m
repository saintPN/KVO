//
//  AppStatusWatcher.m
//  KVO
//
//  Created by saintPN on 15/4/19.
//  Copyright (c) 2015年 saintPN. All rights reserved.
//

#import "AppStatusWatcher.h"

@implementation AppStatusWatcher

- (void)observeValueForKeyPath:(NSString*)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void*)context{
    
    NSLog(@"Property '%@' of object '%@' changed: %@ context: %@",keyPath,object,change,context);
    
}

@end
