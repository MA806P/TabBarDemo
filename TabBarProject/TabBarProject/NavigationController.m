//
//  NavigationController.m
//  TabBarProject
//
//  Created by MA806P on 16/9/19.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "NavigationController.h"

@implementation NavigationController


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
    
}


@end
