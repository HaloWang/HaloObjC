//
//  AppDelegate.m
//  HaloObjCDemo
//
//  Created by 王策 on 16/3/28.
//  Copyright © 2016年 王策. All rights reserved.
//

#import "AppDelegate.h"
#import <HaloObjC/HaloObjC.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [HaloObjC server];
    return YES;
}

@end
