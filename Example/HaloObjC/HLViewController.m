//
//  HLViewController.m
//  HaloObjC
//
//  Created by HaloWang on 05/02/2018.
//  Copyright (c) 2018 HaloWang. All rights reserved.
//

#import "HLViewController.h"
#import <HaloObjC/HaloObjC.h>

@interface HLViewController ()

@end

@implementation HLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
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
    
    [testImage logProperties];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if (@available(iOS 11.0, *)) {
        ccRight(NSStringFromUIEdgeInsets(self.view.safeAreaInsets));
    } else {
        // Fallback on earlier versions
    }
    ccRight([NSString stringWithFormat:@"%@", @(NavigationBarHeight)]);
    ccRight([NSString stringWithFormat:@"%@", @(TabBarHeight)]);
    ccRight(self.navigationController.navigationBar);
    ccRight(HaloObjC.appTopViewController);
    // Dispose of any resources that can be recreated.
}

@end
