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
    
    measure(^{
        self.view.backgroundColor = [UIColor whiteColor];
    });
    
    UIView *aView = [[UIView alloc] initWithFrame:CM(200, 200, 100)];
    aView.backgroundColor = ColorWithHexValue(0xFFBB44);
    [self.view addSubview:aView];
}

@end
