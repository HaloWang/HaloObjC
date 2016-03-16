//
//  HaloObjC.m
//  HaloObjC
//
//  Created by 王策 on 16/3/16.
//
//

#import "HaloObjC.h"

CGFloat ScreenWidth;
CGFloat ScreenHeight;
NSString *HomePath;
NSString *CachePath;
NSString *DocumentPath;
NSString *LibraryPath;
NSString *TempPath;
float SystemVersionNumber;
CGFloat NavigationBarHeight;
CGFloat TabBarHeight;
CGFloat StatusBarHeight;

typedef void(^VoidBlock)();

@implementation HaloObjC

+ (void)server {
    measure(^{
        CGSize _screenSize   = [UIScreen mainScreen].bounds.size;
        ScreenHeight         = _screenSize.height;
        ScreenWidth          = _screenSize.width;
        NavigationBarHeight  = 64;
        TabBarHeight         = 49;
        StatusBarHeight      = 20;
        
        HomePath             = NSHomeDirectory();
        CachePath            = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        DocumentPath         = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        LibraryPath          = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        TempPath             = NSTemporaryDirectory();
        
        SystemVersionNumber  = [UIDevice currentDevice].systemVersion.floatValue;
        
    });
}

/**
 *  测量代码块耗时
 *
 *  @param doSomething 代码块
 */
void measure(VoidBlock doSomething) {
    
    NSDate* tmpStartData = [NSDate date];
    
    if (doSomething) {
        doSomething();
    }
    
    double deltaTime = [[NSDate date] timeIntervalSinceDate:tmpStartData];
    NSLog(@"cost time = %f", deltaTime);
    
}

@end
