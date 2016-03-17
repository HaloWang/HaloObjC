//
//  HaloObjC.m
//  HaloObjC
//
//  Created by 王策 on 16/3/16.
//
//

#import "HaloObjC.h"

#pragma mark - 固定尺寸
CGFloat ScreenWidth;
CGFloat ScreenHeight;
CGFloat NavigationBarHeight;
CGFloat TabBarHeight;
CGFloat StatusBarHeight;

#pragma mark - 沙盒路径
NSString *HomePath;
NSString *DocumentPath;
NSString *LibraryPath;
NSString *CachePath;
NSString *TempPath;

#pragma mark - Bundle
NSString *MainBundlePath;
NSString *ResourcePath;
NSString *ExecutablePath;

#pragma mark - 应用信息
NSString *AppBundleID;
NSString *AppVersion;
NSString *AppBuildVersion;

#pragma mark - 系统信息
NSString *SystemVersion;
float SystemVersionNumber;

#pragma mark - ccLog

BOOL CCLogEnable = YES;

void cc(id obj) {
    if (!CCLogEnable) {
        return;
    }
    printf("%s\n", [[obj description]UTF8String]);
}

void ccRight(id obj) {
    if (!CCLogEnable) {
        return;
    }
    printf("%s\n", [[NSString stringWithFormat:@"%@%@", @"✅",[obj description]]UTF8String]);
}

void ccError(id obj) {
    if (!CCLogEnable) {
        return;
    }
    printf("%s\n", [[NSString stringWithFormat:@"%@%@", @"❌",[obj description]]UTF8String]);
}

void ccWarning(id obj) {
    if (!CCLogEnable) {
        return;
    }
    printf("%s\n", [[NSString stringWithFormat:@"%@%@", @"⚠️",[obj description]]UTF8String]);
}

@implementation HaloObjC

+ (void)server {
    CGSize _screenSize           = [UIScreen mainScreen].bounds.size;
    ScreenHeight                 = _screenSize.height;
    ScreenWidth                  = _screenSize.width;
    NavigationBarHeight          = 64;
    TabBarHeight                 = 49;
    StatusBarHeight              = 20;
    
    HomePath                     = NSHomeDirectory();
    CachePath                    = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    DocumentPath                 = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    LibraryPath                  = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    TempPath                     = NSTemporaryDirectory();
    
    NSBundle *mainBundle         = [NSBundle mainBundle];
    MainBundlePath               = [mainBundle bundlePath];
    ResourcePath                 = [mainBundle resourcePath];
    ExecutablePath               = [mainBundle executablePath];
    
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    AppBundleID                  = infoDictionary[@"CFBundleIdentifier"];
    AppVersion                   = infoDictionary[@"CFBundleShortVersionString"];
    AppBuildVersion              = infoDictionary[@"CFBundleVersion"];
    
    SystemVersion                = [UIDevice currentDevice].systemVersion;
    SystemVersionNumber          = SystemVersion.floatValue;
}

+ (void)logEnable:(BOOL)enable {
    CCLogEnable = enable;
}

@end

@implementation UIView (Halo)

- (void)cornerRadius:(CGFloat)radius {
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

- (void)cornerRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = true;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = borderColor.CGColor;
    
}

@end

