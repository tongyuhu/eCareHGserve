//
//  VerificationPasswordViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "VerificationPasswordViewController.h"
#import "FirstBindingViewController.h"
#import "BindingBankSuccessViewController.h"
#import "NewPhoneNumViewController.h"


@interface VerificationPasswordViewController ()

@end

@implementation VerificationPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
// 根据不同的类型跳转不同的界面   
- (IBAction)nestStep:(id)sender {
    if (self.verificationType == VerificationTypeForBank) {
        FirstBindingViewController *bindVc = [[FirstBindingViewController alloc ]init];
        [self.navigationController pushViewController:bindVc animated:YES];
    }else if (self.verificationType == VerificationTypeForPhone)
    {
        NewPhoneNumViewController *vc = [[NewPhoneNumViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
}


@end
