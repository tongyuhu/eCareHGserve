//
//  BindingBankSuccessViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BindingBankSuccessViewController.h"
#import "UserInformationViewController.h"

@interface BindingBankSuccessViewController ()

@end

@implementation BindingBankSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (self.verificationType == VerificationTypeForBank) {
        self.displayStringLabel.text = @"绑定银行卡成功!";
    }
    else if (self.verificationType == VerificationTypeForPhone)
    {
        self.displayStringLabel.text = @"更换手机号码成功";
    }
    else if (self.verificationType == VerificationTypeForPassword)
    {
        self.displayStringLabel.text = @"修改密码成功";
    }
    else if (self.verificationType == VerificationTypeForRealNameAuthentication)
    {
        self.displayStringLabel.text = @"实名认证信息已提交, 请等待审核";
    }
    else if (self.verificationType == VerificationTypeForNorseCertication)
    {
        self.displayStringLabel.text = @"护士认证信息已提交, 请等待审核";
    }
    else if (self.verificationType == VerificationTypeForHealthCertication)
    {
        self.displayStringLabel.text = @"健康认证信息已提交, 请等待审核";
    }
    else if (self.verificationType == VerificationTypeForRankCertication)
    {
        self.displayStringLabel.text = @"职称认证信息已提交, 请等待审核";
    }
    
}

- (IBAction)bindingBankSuccessBtn:(id)sender {
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}

@end
