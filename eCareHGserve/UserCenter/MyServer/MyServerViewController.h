//
//  MyServerViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface MyServerViewController : BaseNavViewController

@property (weak, nonatomic) IBOutlet UIView *backgroundView;

@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UILabel *bottomViewTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;




@property (weak, nonatomic) IBOutlet UILabel *severItem;
@property (weak, nonatomic) IBOutlet UILabel *rank;
@property (weak, nonatomic) IBOutlet UILabel *worthPrice;
@property (weak, nonatomic) IBOutlet UILabel *offer;
@property (weak, nonatomic) IBOutlet UILabel *area;

@end
