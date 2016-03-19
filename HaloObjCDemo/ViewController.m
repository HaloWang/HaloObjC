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
}

@end
