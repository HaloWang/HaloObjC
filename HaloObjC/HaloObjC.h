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
extern CGRect  ScreenBounds NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGRect  ScreenBoundsWithoutNavigationBar NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGFloat ScreenWidth NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGFloat ScreenHeight NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGFloat NavigationBarHeight NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGFloat BottomSafeHeightForIPhoneX NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGFloat TabBarHeight NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern CGFloat StatusBarHeight NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - 沙盒路径
extern NSString *HomePath NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *DocumentPath NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *LibraryPath NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *CachePath NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *TempPath NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - Bundle
extern NSString *MainBundlePath NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *ResourcePath NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *ExecutablePath NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - 应用信息
extern NSString *AppBundleID NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *AppVersion NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern NSString *AppBuildVersion NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - 系统信息
extern NSString *SystemVersion NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern float SystemVersionNumber NS_SWIFT_UNAVAILABLE("Use Halo instead");

extern BOOL iPhone5_5 NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern BOOL iPhone4_7 NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern BOOL iPhone4_0 NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern BOOL iPhone3_5 NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern BOOL iPhoneX NS_SWIFT_UNAVAILABLE("Use Halo instead");
extern BOOL iPhone5_8 NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - Measure

/**
 *  测量某段代码的执行时间
 *  你不用考虑 block 执行的线程
 *
 *  @param CodeWaitingForMeasure 你想测量的代码
 */
void Measure(void(^CodeWaitingForMeasure)(void)) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - GCD

/**
 *  开辟新线程，异步执行
 *
 *  @param noUITask 一些要做，但是可以放到最后做的事情
 */
void Async(void(^noUITask)(void)) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  开启新线程，异步执行，完成后回到主线程执行
 *
 *  @param noUITask    顾名思义
 *
 *  @param UITask  顾名思义
 */
void AsyncFinish(void(^noUITask)(void), void(^UITask)(void)) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  主线程异步执行
 *
 *  @param UITask 一些要做，而且需要在主线程做，但是可以放到最后做的事情
 */
void hl_last(void(^UITask)(void)) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *
 *
 *  @param second  延迟多少秒
 *  @param UITask 在主线程中做的事情
 */
void hl_after(float second, void(^UITask)(void)) NS_SWIFT_UNAVAILABLE("Use Halo instead");


/**
 后台线程执行

 @param noUITask 非 UI 任务
 */

void hl_background(void(^noUITask)(void)) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - Log

/**
 *  简化 NSLog 调用
 *
 *  @param obj Something you wants to print
 */
void cc(id obj) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  简化 NSLog 调用
 *
 *  @param obj Something you wants to print with ✅
 */
void ccRight(id obj) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  简化 NSLog 调用
 *
 *  @param obj Something you wants to print with ❌
 */
void ccError(id obj) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  简化 NSLog 调用
 *
 *  @param obj Something you wants to print with ⚠️
 */
void ccWarning(id obj) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - App

UIViewController *hl_applicationRootViewController(void) NS_SWIFT_UNAVAILABLE("Use Halo instead");

UIWindow *hl_applicationWindow(void) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - HaloObjC

@interface HaloObjC : NSObject

/**
 *  是否开启 Log（也就是 ccLog），默认值是 YES
 */
+ (void)logEnable:(BOOL)enable NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  如果要使用 HaloObjC 该方法必须被调用
 */
+ (void)server NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  调用 ccError 时的回调
 */
+ (void)setCCErrorFunctionCallBack:(void(^)(NSString *displayInfo))callBack NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - NSString

@interface NSString (Halo)

@property (nonatomic, readonly) NSURL *URL NS_SWIFT_UNAVAILABLE("Use Halo instead");

@property (nonatomic, readonly) NSDictionary *hl_jsonDictionary NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - MutableDeepCopying

@protocol MutableDeepCopying <NSObject>

-(id)hl_mutableDeepCopy NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

@interface NSDictionary (MutableDeepCopy) <MutableDeepCopying>
@end

@interface NSArray (MutableDeepCopy) <MutableDeepCopying>
@end

#pragma mark - SandBox

long long hl_sizeOfFolder(NSString *folderPath) NS_SWIFT_UNAVAILABLE("Use Halo instead");

NSString *hl_sizeStringOfSize(long long size) NS_SWIFT_UNAVAILABLE("Use Halo instead");

NSString *hl_sizeStringOfFolder(NSString *folderPath) NS_SWIFT_UNAVAILABLE("Use Halo instead");

void hl_fetchSizeOfFolder(NSString *folderPath, void(^finished)(long long sizeOfFolder)) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - UIFont

UIFont *hl_systemFontOfSize(CGFloat size) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#pragma mark - UIButton

@interface UIButton (Halo)

@property (nonatomic, strong) UIFont *hl_titleFont NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, strong) UIColor *hl_normalTitleColor NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, strong) NSString *hl_normalTitle NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, strong) UIImage *hl_normalImage NS_SWIFT_UNAVAILABLE("Use Halo instead");

+ (UIButton *)custom NS_SWIFT_UNAVAILABLE("Use Halo instead");

- (instancetype)hl_touchUpInSideTarget:(id)target action:(SEL)action NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UIViewController

@interface UIViewController (Halo)

- (instancetype)title:(NSString *)title NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UIView

/// 相当于 CGRectMake
CGRect RM(CGFloat x, CGFloat y, CGFloat width, CGFloat height) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/// 创建一个水平居中（相对于屏幕）的 CGRect 值
CGRect CM(CGFloat y, CGFloat width, CGFloat height) NS_SWIFT_UNAVAILABLE("Use Halo instead");

/// 像素对齐
CGFloat pixelIntegral(CGFloat value) NS_SWIFT_UNAVAILABLE("Use Halo instead");

@interface UIView (Halo)

+ (instancetype)addToSuperview:(UIView *)superview NS_SWIFT_UNAVAILABLE("Use Halo instead");

- (instancetype)addToSuperview:(UIView *)superview NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  设定圆角半径
 *
 *  @param radius 圆角半径
 */
- (void)hl_cornerRadius:(CGFloat)radius NS_SWIFT_UNAVAILABLE("Use Halo instead");

/**
 *  同时设定 圆角半径 描边宽度 描边颜色
 *
 *  @param radius      圆角半径
 *  @param borderWidth 描边宽度
 *  @param borderColor 描边颜色
 */
- (void)hl_cornerRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UIScrollView

@interface UIScrollView (Halo)

@property (nonatomic, assign) CGFloat hl_insetTop NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, assign) CGFloat hl_insetBottom NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, assign) CGFloat hl_insetLeft NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, assign) CGFloat hl_insetRight NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, assign) CGFloat hl_indicatorTop NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, assign) CGFloat hl_indicatorBottom NS_SWIFT_UNAVAILABLE("Use Halo instead");

@property (nonatomic, assign) CGFloat hl_offsetX NS_SWIFT_UNAVAILABLE("Use Halo instead");
@property (nonatomic, assign) CGFloat hl_offsetY NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UITableView

@interface UITableView (Halo)

/**
 *  默认使用 class 名作为 reuseIdentifier
 *
 *  @param cellClass 要注册的 Cell 类型
 */
- (void)hl_registerCellClass:(Class)cellClass NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UITableViewCell

@interface UITableViewCell (Halo)

+ (NSString *)hl_reuseIdentifier NS_SWIFT_UNAVAILABLE("Use Halo instead");

- (instancetype)selectionStyle:(UITableViewCellSelectionStyle)style NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

@interface UITableViewValue1Cell : UITableViewCell

@end

#pragma mark - UICollectionView

@interface UICollectionView (Halo)

- (void)hl_registerCellClass:(Class)cellClass NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UICollectionViewCell

@interface UICollectionViewCell (Halo)

+ (NSString *)hl_reuseIdentifier NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UINavigatoinController

@interface UINavigationController (Halo)

/**
*  使用纯色填充 NavigationBar
*
*  @param color       NavigationBar 背景颜色
*  @param tintColor   NavigationBar 标题颜色
*  @param shadowColor NavigationBar 下边分割线颜色
*/
- (void)hl_barUseColor:(UIColor *)color tintColor:(UIColor *)tintColor shadowColor:(UIColor *)shadowColor NS_SWIFT_UNAVAILABLE("Use Halo instead");

+ (instancetype)root:(UIViewController *)rootVC NS_SWIFT_UNAVAILABLE("Use Halo instead");

@end

#pragma mark - UIColor

#ifndef HEXStr
/**
 *  use hexstring like @"FFFFFF" (or @"#FFFFFF") to create a UIColor object
 */
UIColor *HEXStr(NSString *hexString) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#endif


#ifndef HEX
/**
 *  use hexValue like 0xFFFFFF to create a UIColor object
 */
UIColor *HEX(NSUInteger hex) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#endif

#ifndef RGB

/**
 RGB

 @param r 0~255
 @param g 0~255
 @param b 0~255
 */
UIColor *RGB(CGFloat r, CGFloat g, CGFloat b) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#endif

#ifndef RGBA

/**
 带有 alpha 的 RGB

 @param r 0~255
 @param g 0~255
 @param b 0~255
 @param a 0~1
 */
UIColor *RGBA(CGFloat r, CGFloat g, CGFloat b, CGFloat a) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#endif

#ifndef ColorWithHexValueA

UIColor *ColorWithHexValueA(NSUInteger hexValue, CGFloat a) NS_SWIFT_UNAVAILABLE("Use Halo instead");

#endif
