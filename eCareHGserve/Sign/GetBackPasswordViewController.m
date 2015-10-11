//
//  GetBackPasswordViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "GetBackPasswordViewController.h"
#import "ResetPasswordViewController.h"

@interface GetBackPasswordViewController ()

@end

@implementation GetBackPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)getIdentityCodeBtn:(id)sender {
}
- (IBAction)nestStep:(id)sender {
    ResetPasswordViewController *vc = [[ResetPasswordViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
