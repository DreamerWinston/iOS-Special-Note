//
//  WelcomeVC.m
//  StudyDevelopDemo
//
//  Created by winston on 2018/10/11.
//  Copyright © 2018 winston. All rights reserved.
//

#import "WelcomeVC.h"

#import "BlockVC.h"

@interface WelcomeVC ()

@end

@implementation WelcomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BlockVC * block =[[BlockVC alloc]init];
    [self.navigationController pushViewController:block animated:YES];
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
