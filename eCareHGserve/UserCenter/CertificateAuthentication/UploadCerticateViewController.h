//
//  UploadCerticateViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface UploadCerticateViewController : BaseNavViewController

@property (weak, nonatomic) IBOutlet UITextField *certicationName;
@property (weak, nonatomic) IBOutlet UITextField *certicationUserName;
@property (nonatomic, assign)VerificationType vericationType;
@end
