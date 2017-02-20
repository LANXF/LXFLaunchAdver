# LXFLaunchAdver
这个可以让你在启动APP的时候，出现几秒钟的广告。

## 说明：
这里要说明一下，现在不支持直接从storyboard启动你的APP，因为从storyboard启动的话，启动比较慢。这个广告的view不会覆盖的window的最上面。
解决办法就是从代码加载你的storyboard。
## 使用：
#### 导入头文件：

在使用之前记得把项目的Main Interface 删除掉！然后用代码加载storyboard。

```objc
#import "AdvertiseHelper.h"
```

在AppDelegate中的这个方法调用这个方法

```objc
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //设置window
    [self setupWindow];
    //启动广告的方法。一定在最后调用这个方法，要不然有可能显示不出来。
    [self setupAdveriseView];
    
    return YES;
}

```

从代码加载你的storyboard

```objc
/**
 初始化root控制器
 */
- (void)setupWindow {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController* mainVC = [sb instantiateInitialViewController];
    self.window = [UIWindow new];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.rootViewController = mainVC;
    [self.window makeKeyAndVisible];
}
```

启动广告的方法

```objc
#pragma mark - 启动广告
-(void)setupAdveriseView
{
    // TODO 请求广告接口 获取广告图片
    
    //现在了一些固定的图片url代替
    NSArray *imageArray = @[@"http://olofqpsx9.bkt.clouddn.com/image/jpg/1346122683517.jpg",
                            @"http://olofqpsx9.bkt.clouddn.com/image/jpg/BingWallpaper-2016-11-12.jpg",
                            @"http://olofqpsx9.bkt.clouddn.com/image/jpg/BingWallpaper-2016-10-26.jpg"];
    
    [AdvertiseHelper showAdvertiserView:imageArray andShowTime:10];
}
```

