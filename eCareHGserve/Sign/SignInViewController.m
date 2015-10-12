//
//  SignInViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "SignInViewController.h"
#import "RegisterViewController.h"
#import "GetBackPasswordViewController.h"
#import "MainTabBarController.h"
@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)getBackPassword:(id)sender {
    GetBackPasswordViewController *vc = [[GetBackPasswordViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)registerBtn:(id)sender {
    RegisterViewController *vc =[[RegisterViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)signBtn:(id)sender {
    //创建视图控制器
    MainTabBarController *mainTabCtrl = [[MainTabBarController alloc] init];
    [self.navigationController presentViewController:mainTabCtrl animated:NO completion:Nil];
    
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
