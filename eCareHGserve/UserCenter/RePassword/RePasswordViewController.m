//
//  RePasswordViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "RePasswordViewController.h"
#import "BindingBankSuccessViewController.h"

@interface RePasswordViewController ()

@end

@implementation RePasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)commitBtn:(id)sender {
    BindingBankSuccessViewController *vc =[[BindingBankSuccessViewController alloc] init];
    vc.verificationType = VerificationTypeForPassword;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
