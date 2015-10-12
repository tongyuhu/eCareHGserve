//
//  UserInformationViewController.h
//  eCareHG
//
//  Created by tongyuhu on 15/9/23.
//  Copyright (c) 2015年 JinYanFeng. All rights reserved.
//

#import "BaseNavViewController.h"

@interface UserInformationViewController : BaseNavViewController


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;

@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;


@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UITextField *nickName;
@property (weak, nonatomic) IBOutlet UILabel *gender;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UILabel *workAge;
@property (weak, nonatomic) IBOutlet UILabel *speciality;
@property (weak, nonatomic) IBOutlet UILabel *phoneNum;
@property (weak, nonatomic) IBOutlet UILabel *bankNum;
@property (weak, nonatomic) IBOutlet UILabel *RealnNameAuthentication;
@property (weak, nonatomic) IBOutlet UILabel *qualificationAuthentication;

@end
