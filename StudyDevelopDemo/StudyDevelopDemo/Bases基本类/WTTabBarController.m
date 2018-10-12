//
//  WTTabBarController.m
//  StudyDevelopDemo
//
//  Created by winston on 2018/10/11.
//  Copyright © 2018 winston. All rights reserved.
//

#import "WTTabBarController.h"
#import "WTNavigationController.h"

#import "SettingsVC.h"
#import "WelcomeVC.h"

@interface WTTabBarController ()
{
    SettingsVC * _settingsVC;
    WelcomeVC * _welcomeVC;
}

@end

@implementation WTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _welcomeVC =[[WelcomeVC alloc]init];
    [self  addChildVc:_welcomeVC title:@"欢迎" image:@"" selectedImage:@"" hide:NO];
    
    _settingsVC =[[SettingsVC alloc]init];
    [self  addChildVc:_settingsVC title:@"设置" image:@"" selectedImage:@"" hide:NO];
    
}

#pragma mark - private 私有方法

- (void)addChildVc:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage hide:(BOOL)hide{
    
    childController.title=title;
    childController.navigationItem.title = title;
    childController.tabBarItem.title = title;
    childController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectimage = [UIImage imageNamed:selectedImage];
    childController.tabBarItem.selectedImage = [selectimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    [childController.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    [childController.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -6.0)];
    [childController.tabBarItem setImageInsets:UIEdgeInsetsMake(-3.0, 0, 3.0, 0)];
    
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = HexRGB(0x3cc3d3);
    [childController.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    WTNavigationController * nav =[[WTNavigationController alloc]initWithRootViewController:childController];
    nav.navigationBarHidden=hide;
    
    [self addChildViewController:nav];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
