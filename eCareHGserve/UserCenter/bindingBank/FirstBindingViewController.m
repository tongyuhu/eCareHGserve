//
//  FirstBindingViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "FirstBindingViewController.h"
#import "BindingBankSuccessViewController.h"
#import "MobileVerificationBankViewController.h"

@interface FirstBindingViewController ()

@end

@implementation FirstBindingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)nestStepBtn:(id)sender {
    if (self.isReBinding) {
        MobileVerificationBankViewController *vc =[[MobileVerificationBankViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else
    {
        BindingBankSuccessViewController *vc = [[BindingBankSuccessViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
}

@end
