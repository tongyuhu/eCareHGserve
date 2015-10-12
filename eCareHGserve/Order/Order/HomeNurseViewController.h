//
//  HomeNurseViewController.h
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface HomeNurseViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UILabel *serveObjLab;
@property (weak, nonatomic) IBOutlet UILabel *serveTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *serveAdressLab;
@property (weak, nonatomic) IBOutlet UILabel *phoneLab;
@property (weak, nonatomic) IBOutlet UIButton *homeDetailBtn;
- (IBAction)homeDetailBtnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *quitBtn;
- (IBAction)quitBtnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *robOrderBtn;
- (IBAction)robOrderBtnClick:(id)sender;

@end
