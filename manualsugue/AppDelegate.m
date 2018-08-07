//
//  AppDelegate.m
//  manualsugue
//
//  Created by luwentao on 2018/8/6.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "TongXunLuViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    /*self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UINavigationController *rootNc = [[UINavigationController alloc] init];
    UINavigationController *rootSub1 = [[UINavigationController alloc] init];
    UINavigationController *rootSub2 = [[UINavigationController alloc] init];
    
    self.window.rootViewController = rootNc;
    [rootNc addChildViewController:rootSub1];
    [rootNc addChildViewController:rootSub2];
    
    [self.window makeKeyAndVisible ];*/
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *vc1 = [[LoginViewController alloc] init];
    vc1.title = @"登陆验证";
   
    
    UIViewController *vc2 = [[TongXunLuViewController alloc] init];
    vc2.title = @"通讯录信息";
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    nav1.title = @"登陆";
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    nav2.title = @"通讯录";
    
    UITabBarController *tabvc = [[UITabBarController alloc] init];
    [tabvc setViewControllers:@[nav1,nav2]];
    
    //vc1.nibName = @"TestViewController";
    //[tabvc setToolbarItems:@[nav1,nav2]];
    
    self.window.rootViewController = tabvc;
    
    
    [self.window makeKeyAndVisible ];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
