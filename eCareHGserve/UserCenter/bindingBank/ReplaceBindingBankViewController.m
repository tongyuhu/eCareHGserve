//
//  ReplaceBindingBankViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "ReplaceBindingBankViewController.h"
#import "VerificationPasswordViewController.h"

@interface ReplaceBindingBankViewController ()


@end

@implementation ReplaceBindingBankViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)replaceBankBtn:(id)sender {
    VerificationPasswordViewController *vc = [[VerificationPasswordViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
