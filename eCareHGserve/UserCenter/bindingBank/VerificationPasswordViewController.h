//
//  VerificationPasswordViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"



@interface VerificationPasswordViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UITextField *password;

@property (nonatomic, assign)VerificationType verificationType;

@end
