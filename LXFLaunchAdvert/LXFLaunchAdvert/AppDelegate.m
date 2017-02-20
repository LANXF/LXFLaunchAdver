//
//  AppDelegate.m
//  LXFLaunchAdvert
//
//  Created by 蓝潇枫 on 2017/2/21.
//  Copyright © 2017年 蓝潇枫. All rights reserved.
//

#import "AppDelegate.h"
#import "AdvertiseHelper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setupWindow];
    //一定在最后调用这个方法，要不然有可能显示不出来。
    [self setupAdveriseView];
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

#pragma mark - 启动广告
-(void)setupAdveriseView
{
    // TODO 请求广告接口 获取广告图片
    
    //现在了一些固定的图片url代替
    NSArray *imageArray = @[@"http://olofqpsx9.bkt.clouddn.com/image/jpg/1346122683517.jpg",
                            @"http://olofqpsx9.bkt.clouddn.com/image/jpg/BingWallpaper-2016-11-12.jpg",
                            @"http://olofqpsx9.bkt.clouddn.com/image/jpg/BingWallpaper-2016-10-26.jpg"];
    
    
    [AdvertiseHelper showAdvertiserView:imageArray andShowTime:5];
}

#pragma mark - 初始化root控制器
- (void)setupWindow {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController* mainVC = [sb instantiateInitialViewController];
    self.window = [UIWindow new];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.rootViewController = mainVC;
    [self.window makeKeyAndVisible];
}
@end
