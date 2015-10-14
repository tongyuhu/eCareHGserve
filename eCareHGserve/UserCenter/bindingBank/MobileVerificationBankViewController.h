//
//  MobileVerificationBankViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"


@interface MobileVerificationBankViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UITextField *verificationCode;
@property (weak, nonatomic) IBOutlet UIButton *getCodeBtn;
@property (nonatomic, assign) VerificationType verificationType;

@end
