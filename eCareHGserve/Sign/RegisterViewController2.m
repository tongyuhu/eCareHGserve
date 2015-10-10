//
//  RegisterViewController2.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "RegisterViewController2.h"
#import "MainTabBarController.h"
@interface RegisterViewController2 ()

@end

@implementation RegisterViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)registerBtn:(id)sender {
//    MainTabBarController *main = [[MainTabBarController alloc]  init];
    [self.navigationController popToRootViewControllerAnimated:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
