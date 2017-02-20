//
//  AdvertiseHelper.h
//  LXFFlashProject  处理事件在AdvertiseView里面有个NotificationContants_Advertise_Key通知，可以在首页进行获取通知，然后进行处理，比如进行跳转功能
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pushToAd) name:NotificationContants_Advertise_Key object:nil];
//
//  Created by 蓝潇枫 on 17/2/10.
//  Copyright © 2017年 lanxiaofeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdvertiseView.h"

@interface AdvertiseHelper : NSObject

/**
 单例
 */
+ (instancetype)sharedInstance;

/**
 启动方法
 
 @param imageArray 图片地址数组
 @param time 启动时间
 */
+ (void)showAdvertiserView:(NSArray *)imageArray andShowTime:(NSInteger)time;

@end
