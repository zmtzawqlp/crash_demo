#include "AppDelegate.h"
#import "HomeViewController.h"

@implementation AppDelegate
@synthesize window =_window;
- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    UIButton *nativeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    nativeButton.frame = CGRectMake(self.window.frame.size.width * 0.5 - 75, 200, 150, 45);
    nativeButton.backgroundColor = [UIColor redColor];
    [nativeButton setTitle:@"Push Flutter VC" forState:UIControlStateNormal];
    [nativeButton addTarget:self action:@selector(pushNative) forControlEvents:UIControlEventTouchUpInside];

  // Override point for customization after application launch.
    
//    UIViewController *vc = [[UIViewController alloc]init];
//    vc.view.backgroundColor = [UIColor whiteColor];
//    [vc.view addSubview:nativeButton];
    HomeViewController *vc = [HomeViewController new];
    UINavigationController *rvc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window.rootViewController = rvc;
  return YES;
}

- (void)pushNative {
    UINavigationController *nvc = (id)self.window.rootViewController;
    HomeViewController *vc = [HomeViewController new];
    [nvc pushViewController:vc animated:true];
}


@end
