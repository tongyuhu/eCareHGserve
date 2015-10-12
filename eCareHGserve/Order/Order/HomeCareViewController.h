//
//  HomeCareViewControllerrViewController.h
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface HomeCareViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UILabel *serveObjLab;
@property (weak, nonatomic) IBOutlet UILabel *serveTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *serveAdressLab;
@property (weak, nonatomic) IBOutlet UILabel *phoneLab;
@property (weak, nonatomic) IBOutlet UILabel *fullLab;
@property (weak, nonatomic) IBOutlet UILabel *messageLab;

@property (weak, nonatomic) IBOutlet UIButton *timeDetailBtn;
- (IBAction)timeDetailBtnClick:(id)sender;
- (IBAction)quitBtnClick:(id)sender;
- (IBAction)robOrderBtnClick:(id)sender;

@end
