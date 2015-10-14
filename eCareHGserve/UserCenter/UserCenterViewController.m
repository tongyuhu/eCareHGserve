//
//  UserCenterViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "UserCenterViewController.h"
#import "UserInformationViewController.h"
#import "CertificateAuthenticationViewController.h"
#import "MyPointsViewController.h"
#import "CreateChatRoomViewController.h"
#import "MyServerViewController.h"
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

}
- (IBAction)authenticationBtn:(id)sender {
    CertificateAuthenticationViewController *vc = [[CertificateAuthenticationViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)myPointBtn:(id)sender {
    MyPointsViewController *vc = [[MyPointsViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)createChatRoomBtn:(id)sender {
    CreateChatRoomViewController *vc = [[CreateChatRoomViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)mySeverBtn:(id)sender {
    MyServerViewController *vc = [[MyServerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
