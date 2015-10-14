//
//  NewPhoneNumViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "NewPhoneNumViewController.h"
#import "MobileVerificationBankViewController.h"

@interface NewPhoneNumViewController ()

@end

@implementation NewPhoneNumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
// 进入手机号验证界面 根据不同的类型跳入不同的界面
- (IBAction)nextStepBtn:(id)sender {
    MobileVerificationBankViewController *vc = [[MobileVerificationBankViewController alloc] init];
    vc.verificationType = VerificationTypeForPhone;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
