//
//  ABTabBarController.m
//  TabBarProject
//
//  Created by MA806P on 16/9/19.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "ABTabBarController.h"
#import "NavigationController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@implementation ABTabBarController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.tabBar.backgroundColor = [UIColor redColor];
    //self.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar_profile_highlighted"];
    //self.tabBar.tintColor = [UIColor redColor];
    
    OneViewController * one = [[OneViewController alloc] init];
    [self addItemController:one title:@"首页" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    TwoViewController * two = [[TwoViewController alloc] init];
    [self addItemController:two title:@"消息" imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected"];
    
    ThreeViewController * three = [[ThreeViewController alloc] init];
    [self addItemController:three title:@"发现" imageName:@"test" selectedImageName:@"tabbar_discover_selected"];
    
    FourViewController * four = [[FourViewController alloc] init];
    [self addItemController:four title:@"我" imageName:@"wechat_icon" selectedImageName:@"tabbar_profile_selected"];
    
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


@end
