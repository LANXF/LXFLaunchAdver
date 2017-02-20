//
//  AdvertiseView.h
//  LXFFlashProject 启动广告视图
//
//  Created by 蓝潇枫 on 17/2/10.
//  Copyright © 2017年 lanxiaofeng. All rights reserved.
//

#import <UIKit/UIKit.h>


#define kAdscreenWidth [UIScreen mainScreen].bounds.size.width
#define kAdscreenHeight [UIScreen mainScreen].bounds.size.height
#define kAdMain_Screen_Bounds [[UIScreen mainScreen] bounds]
#define kAdUserDefaults [NSUserDefaults standardUserDefaults]

static NSString *const adImageName = @"adImageName";
static NSString* const NotificationContants_Advertise_Key=@"AdvertisePush";

@interface AdvertiseView : UIView

/** 显示广告页面方法*/
- (void)showWithShowTime:(NSInteger)time;

/** 图片路径*/
@property (nonatomic, copy) NSString *filePath;

- (instancetype)initWithFrame:(CGRect)frame andTime:(NSInteger)time;

@end
