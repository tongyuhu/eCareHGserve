//
//  RegisterViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "RegisterViewController.h"
#import "RegisterViewController2.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)getCodeBtn:(id)sender {
}
- (IBAction)netStep:(id)sender {
    RegisterViewController2 *vc = [[RegisterViewController2 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
