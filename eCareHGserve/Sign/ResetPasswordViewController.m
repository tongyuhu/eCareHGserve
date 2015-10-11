//
//  ResetPasswordViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "ResetPasswordViewController.h"
#import "SuccessResetedPasswordViewController.h"

@interface ResetPasswordViewController ()

@end

@implementation ResetPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)summitBtn:(id)sender {
    SuccessResetedPasswordViewController *vc = [[SuccessResetedPasswordViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
