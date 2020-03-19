//
//  HomeViewController.m
//  Runner
//
//  Created by 辉 lee on 2020/3/19.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "HomeViewController.h"
#import "BaesFlutterViewController.h"

@interface HomeViewController ()
@property (nonatomic, strong) UIButton *jump;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.jump = [[UIButton alloc] init];
    [self.jump setTitle:@"jump flutter" forState:UIControlStateNormal];
    [self.jump setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:self.jump];
    self.jump.frame = CGRectMake(0, 0, 200, 50);
    self.jump.center = self.view.center;
    // Do any additional setup after loading the view.
    [self.jump addTarget:self action:@selector(jumpFlutter) forControlEvents:UIControlEventTouchUpInside];
}

- (void)jumpFlutter {
    BaesFlutterViewController *vc = [[BaesFlutterViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

@end
