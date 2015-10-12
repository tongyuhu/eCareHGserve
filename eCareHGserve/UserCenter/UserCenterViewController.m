//
//  UserCenterViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "UserCenterViewController.h"
#import "UserInformationViewController.h"
#import "ServeDetailViewController.h"
@interface UserCenterViewController ()

@end

@implementation UserCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navView.hidden = YES;
    self.scrollView.frame = CGRectMake(0, 20, ScreenWidth, ScreenHeight-64);
    self.scrollView.contentSize = CGSizeMake(ScreenWidth, 700);
}

- (IBAction)userInformManagerBtn:(id)sender {
    UserInformationViewController *vc = [[UserInformationViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
//    ServeDetailViewController *vc = [[ServeDetailViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
}

@end
