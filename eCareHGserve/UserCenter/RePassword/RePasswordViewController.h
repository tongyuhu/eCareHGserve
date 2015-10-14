//
//  RePasswordViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface RePasswordViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UITextField *oldPassword;

@property (weak, nonatomic) IBOutlet UITextField *rePassword;
@property (weak, nonatomic) IBOutlet UITextField *confirmPassword;

@end
