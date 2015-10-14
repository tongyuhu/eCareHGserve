//
//  FirstBindingViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/12.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface FirstBindingViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UITextField *bankUserName;
@property (weak, nonatomic) IBOutlet UITextField *bankNum;
@property (nonatomic, assign)BOOL isReBinding;

@end
