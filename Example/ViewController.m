//
//  ViewController.m
//  Example
//
//  Created by andehang on 2017/11/30.
//  Copyright © 2017年 andehang. All rights reserved.
//

#import "ViewController.h"
#import "ADScreenAdaptation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    adsaReferenceScreen(ReferenceScreeniPhoneX);
    CGRectMake(adsaX(100), adsaY(100), adsaW(100), adsaH(100));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
