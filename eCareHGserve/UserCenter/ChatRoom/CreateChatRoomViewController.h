//
//  CreateChatRoomViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface CreateChatRoomViewController : BaseNavViewController
@property (weak, nonatomic) IBOutlet UIView *backgroundView;

@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UILabel *bottomViewTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;



@property (weak, nonatomic) IBOutlet UITextField *roomName;

@property (weak, nonatomic) IBOutlet UITextField *chaterCount;

@property (weak, nonatomic) IBOutlet UIButton *countUpBtn;
@property (weak, nonatomic) IBOutlet UIButton *countDownBtn;


@end
