//
//  OneViewController.m
//  TabBarProject
//
//  Created by MA806P on 16/9/19.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "OneViewController.h"

@implementation OneViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1.0];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 260, 80)];
    [btn setTitle:@"点击改变图标" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton * btn2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 260, 80)];
    [btn2 setTitle:@"点击改变红点" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(change2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
}

- (void)change:(UIButton *)btn
{
    btn.selected = !btn.isSelected;
    
    UIViewController * vc =[self.tabBarController.viewControllers lastObject];
    
    //vc.tabBarItem.badgeValue = @"";
    
    vc.tabBarItem.image = [[UIImage imageNamed:btn.isSelected?@"tabbar_music":@"tabbar_profile"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:btn.isSelected?@"tabbar_music_selected":@"tabbar_profile_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}


- (void)change2:(UIButton *)btn
{
    btn.selected = !btn.isSelected;
    
    UIViewController * vc =[self.tabBarController.viewControllers objectAtIndex:1];
    
    vc.tabBarItem.badgeValue = btn.isSelected ? @"1" : nil;
}


@end
