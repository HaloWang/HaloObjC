//
//  ViewController.m
//  HaloObjCDemo
//
//  Created by 王策 on 16/3/16.
//
//

#import "ViewController.h"
#import "HaloObjC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f",ScreenWidth);
    
    [[UIView new] cornerRadius:5 borderWidth:0.5 borderColor:[UIColor whiteColor]];
    
    cc(self);
    ccRight(self);
    ccWarning(self);
    ccError(self);
    
    ColorWithHexValue(0x666666);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
