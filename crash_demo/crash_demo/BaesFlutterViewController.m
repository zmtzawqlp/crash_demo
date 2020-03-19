//
//  BaesFlutterViewController.m
//  Runner
//
//  Created by 辉 lee on 2020/3/19.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "BaesFlutterViewController.h"
#import "GeneratedPluginRegistrant.h"

@interface BaesFlutterViewController ()
@property (nonatomic, strong) FlutterMethodChannel *methodChannel;
@end

@implementation BaesFlutterViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (void)baseInit {
    __weak __typeof(self)weakSelf = self;
    [GeneratedPluginRegistrant registerWithRegistry:self.engine];
    self.methodChannel = [FlutterMethodChannel
    methodChannelWithName:@"test_channel"
                          binaryMessenger:self.engine];
    [self.methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"openPage"]) {
            BaesFlutterViewController *vc = [[BaesFlutterViewController alloc] init];
            [weakSelf.navigationController pushViewController:vc animated:true];
        }else if ([call.method isEqualToString:@"closePage"]) {
            [weakSelf.navigationController popViewControllerAnimated:true];
        }
    }];
}
@end
