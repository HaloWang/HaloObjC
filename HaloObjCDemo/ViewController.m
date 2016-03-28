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
    UIView *aView = [[UIView alloc] initWithFrame:CM(200, 200, 100)];
    
    Measure(^{
        aView.backgroundColor = HEX(@"#FFBB44");
    });
    
    ccRight(@(ScreenWidth));
    
    [self.view addSubview:aView];
    
}

@end
