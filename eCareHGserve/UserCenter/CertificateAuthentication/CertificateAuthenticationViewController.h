//
//  CertificateAuthenticationViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface CertificateAuthenticationViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UILabel *norseApproveState;
@property (weak, nonatomic) IBOutlet UIButton *healthApproveState;
@property (weak, nonatomic) IBOutlet UIButton *rankApproveState;

@end
