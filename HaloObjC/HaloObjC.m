//
//  HaloObjC.m
//  HaloObjC
//
//  Created by 王策 on 16/3/16.
//
//

#import "HaloObjC.h"

#pragma mark - 固定尺寸
CGRect  ScreenBounds;
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

#pragma mark - Measure

void Measure(void(^CodeWaitingForMeasure)()) {
    NSDate *startTime = [NSDate date];
    if (CodeWaitingForMeasure) {
        CodeWaitingForMeasure();
    }
    NSTimeInterval endTime = [[NSDate date] timeIntervalSinceDate:startTime];
    cc([NSString stringWithFormat:@"代码执行时间为 %f 秒", endTime]);
}

void Async(void(^noUITask)()) {
    
}

void AsyncFinish(void(^noUITask)(), void(^UITask)()) {
    
}

void Last(void(^UITask)()) {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (UITask) {
            UITask();
        }
    });
}

void After(float second, void(^UITask)()) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(second * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (UITask) {
            UITask();
        }
    });
}

#pragma mark - Log

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
    
    CGRect _screenBounds         = [UIScreen mainScreen].bounds;
    ScreenBounds                 = _screenBounds;
    CGSize _screenSize           = _screenBounds.size;
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

#pragma mark - UIView

CGRect RM(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
    return CGRectMake(x, y, width, height);
}

CGRect CM(CGFloat y, CGFloat width, CGFloat height) {
    return RM((ScreenWidth - width)/2, y, width, height);
}

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

#pragma mark - UIColor

UIColor *ColorWithRGB(CGFloat r, CGFloat g, CGFloat b) {
    return [UIColor colorWithRed: r / 255.0f green: g / 255.0f blue: b / 255.0f alpha:1.0];
}

UIColor *ColorWithRGBA(CGFloat r, CGFloat g, CGFloat b, CGFloat a){
    return [UIColor colorWithRed: r / 255.0f green: g / 255.0f blue: b / 255.0f alpha: a];
}

UIColor *ColorWithHexValue(NSUInteger hexValue) {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}
UIColor *ColorWithHexValueA(NSUInteger hexValue, CGFloat a) {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:a];
}



