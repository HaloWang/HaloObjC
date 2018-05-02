//
//  ViewController.m
//  HaloObjCDemo
//
//  Created by 王策 on 16/3/28.
//  Copyright © 2016年 王策. All rights reserved.
//

#import "ViewController.h"
#import <HaloObjC.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    [self title:@"HaloObjC DEMO"];
    [self.navigationController hl_barUseColor:HEX(0xFF3355) tintColor:UIColor.whiteColor shadowColor:nil];

    Measure(^{
        UIView *aView = [[UIView alloc] initWithFrame:CM(200, 200, 100)];
        aView.backgroundColor = HEXStr(@"#FFBB44");
        [self.view addSubview:aView];
    });
    
    ccRight(@(ScreenWidth));
    
    UIImage *testImage = [UIImage hl_imageWithColor:HEX(0x345678) size:CGSizeMake(200, 300)];
    ccRight(testImage);
}

@end
