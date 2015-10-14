//
//  MobileVerificationBankViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "MobileVerificationBankViewController.h"
#import "BindingBankSuccessViewController.h"

@interface MobileVerificationBankViewController ()

@end

@implementation MobileVerificationBankViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)getVerificationBtn:(id)sender {
}
// 讲类型传给成功界面,保证成功界面可以根据不同的类型返回到不同的界面
- (IBAction)nestStepBtn:(id)sender {
    
    BindingBankSuccessViewController *vc = [[BindingBankSuccessViewController alloc] init];
    vc.verificationType = self.verificationType;
    [self.navigationController pushViewController:vc animated:YES];
    

    
    
}


@end
