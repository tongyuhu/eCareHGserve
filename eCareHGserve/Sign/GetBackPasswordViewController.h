//
//  GetBackPasswordViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface GetBackPasswordViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;
@property (weak, nonatomic) IBOutlet UITextField *identityCode;
@property (weak, nonatomic) IBOutlet UIButton *getIdentityCodeBtn;

@end
