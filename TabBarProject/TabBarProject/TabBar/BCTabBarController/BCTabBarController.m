//
//  BCTabBarController.m
//  TabBarProject
//
//  Created by 159CaiMini02 on 16/9/26.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "BCTabBarController.h"
#import "BCTabBar.h"
#import "NavigationController.h"
#import "OneViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"


@interface BCTabBarController ()<BCTabBarDelegate>

@end

@implementation BCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置tabbar
    BCTabBar * tabBar = [[BCTabBar alloc] init];
    tabBar.tabBarDeleage = self;
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
    //添加子控制器
    ThreeViewController * three = [[ThreeViewController alloc] init];
    [self addItemController:three title:@"首页" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    //FourViewController * four = [[FourViewController alloc] init];
    OneViewController * four = [[OneViewController alloc] init];
    [self addItemController:four title:@"我" imageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected"];
}

- (void)addItemController:(UIViewController *)controller title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    controller.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIColor * titleNormalColor = [UIColor colorWithRed:112/255.0 green:112/255.0 blue:112/255.0 alpha:1.0];
    UIColor * titleSelectedColor = [UIColor colorWithRed:253/255.0 green:130/255.0 blue:36/255.0 alpha:1.0];
    [controller.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:titleNormalColor} forState:UIControlStateNormal];
    [controller.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:titleSelectedColor} forState:UIControlStateSelected];
    
    NavigationController * nav = [[NavigationController alloc] initWithRootViewController:controller];
    
    [self addChildViewController:nav];
}

#pragma mark - BCTabBarDelegate

//点击加号按钮
- (void)tabBarPlusButtonTouch
{
    NSLog(@"tabbar plus button touch");
    
}



@end
