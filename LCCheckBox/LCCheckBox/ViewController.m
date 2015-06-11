//
//  ViewController.m
//  LCCheckBox
//
//  Created by Ceres on 15/6/11.
//  Copyright (c) 2015年 www.duoc.cn. All rights reserved.
//

#import "ViewController.h"
#import "LCCheckBox.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LCCheckBox *box = [[LCCheckBox alloc]initWithFrame:CGRectMake(100, 100, 100, 100) yesImage:[UIImage imageNamed:@"qzone_on"] noImage:[UIImage imageNamed:@"qzone_off"]];
    
    [self.view addSubview:box];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
