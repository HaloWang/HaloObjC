//
//  HaloObjC.h
//  HaloObjC
//
//  Created by 王策 on 16/3/16.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark - 固定尺寸
extern CGFloat ScreenWidth;
extern CGFloat ScreenHeight;
extern CGFloat NavigationBarHeight;
extern CGFloat TabBarHeight;
extern CGFloat StatusBarHeight;

#pragma mark - 沙盒路径
extern NSString *HomePath;
extern NSString *DocumentPath;
extern NSString *LibraryPath;
extern NSString *CachePath;
extern NSString *TempPath;

extern float SystemVersionNumber;

@interface HaloObjC : NSObject

+ (void)server;

@end
