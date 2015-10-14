//
//  ReplacePhoneNumViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "ReplacePhoneNumViewController.h"
#import "VerificationPasswordViewController.h"

@interface ReplacePhoneNumViewController ()

@end

@implementation ReplacePhoneNumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
// 跳入登陆密码验证,登陆密码验证界面根据verificationType类型跳转到newphoneViewController
- (IBAction)replacePhone:(id)sender {
    VerificationPasswordViewController *vc = [[VerificationPasswordViewController alloc] init];
    vc.verificationType = VerificationTypeForPhone;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
