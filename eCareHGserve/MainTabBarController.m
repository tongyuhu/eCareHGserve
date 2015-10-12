//
//  MainTabBarController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createControllers];
}

//创建视图控制器
- (void)createControllers
{
    //视图控制器类名
    NSArray *ctrlArray = @[@"NowOrderViewController",@"TaskViewController",@"UserCenterViewController"];
    //标题文字
    NSArray *nameArray = @[@"订单",@"任务",@"个人中心"];
    //图片
    NSArray *imageArray = @[@"ff1",@"gg1",@"user1"];
    NSArray *selectImageArray = @[@"ff",@"gg",@"user"];
    
    //循环创建视图控制器
    NSMutableArray *navArray = [NSMutableArray array];
    for (int i=0; i<ctrlArray.count; i++) {
        //类名
        NSString *className = ctrlArray[i];
        //cls包含类的名字和属性以及方法等内容
        Class cls = NSClassFromString(className);
        //创建视图控制器
        UIViewController *vc = [[cls alloc] init];
        vc.view.backgroundColor = [UIColor whiteColor];
        //图片
        NSString *imageName = imageArray[i];
        NSString *selectImageName = selectImageArray[i];
        //imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal
        //表示使用原始图片
        vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //标题文字
        NSString *title = nameArray[i];
        vc.tabBarItem.title = title;
        NSDictionary *dic = @{NSForegroundColorAttributeName:PURPLE};
        [vc.tabBarItem setTitleTextAttributes:dic forState:UIControlStateSelected];
        vc.tabBarItem.title = title;
        
        //添加导航
        UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:vc];
        navCtrl.navigationBarHidden = YES;
        [navArray addObject:navCtrl];
    }
    self.viewControllers = navArray;
    
}


@end
