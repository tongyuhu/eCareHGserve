//
//  CreateChatRoomViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "CreateChatRoomViewController.h"
typedef NS_ENUM(NSInteger, PickType) {
    PickTypeForRoomType,
    PickTypeForRoomTime
};
@interface CreateChatRoomViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray *_pickArray;
    PickType _pickType;
    
}

@end

@implementation CreateChatRoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.chaterCount.enabled = NO;
    self.chaterCount.text = @"3";
    [self initPick];
}

- (void)initPick
{
    self.pickerView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth; //这里设置了就可以自定                                                                                                                           义高度了，一般默认是无法修改其216像素的高度
    self.pickerView.showsSelectionIndicator=YES;
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    
}



#pragma mark - action

- (void)showBottomView
{
    [self.pickerView reloadAllComponents];
    [self.pickerView selectRow:_pickArray.count/2 inComponent:0 animated:NO];
    CGRect frame = self.bottomView.frame;
    self.backgroundView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
    
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = NO;
        self.bottomView.frame = CGRectMake(0, ScreenHeight - frame.size.height, frame.size.width, frame.size.height);
    }];
}
- (IBAction)chatRoomCategoryBtn:(id)sender {
    _pickType = PickTypeForRoomType;
    _pickArray = @[@"10分钟",@"15分钟",@"20分钟",@"25分钟",@"30分钟",@"35分钟",@"40分钟"];
    self.bottomViewTitle.text = @"咨询种类";
    [self showBottomView];
    
    
    
}

- (IBAction)chatRoomTimeBtn:(id)sender {
    _pickType = PickTypeForRoomTime;
    _pickArray = @[@"妇科",@"男科",@"儿科",@"老年护理",@"糖尿病",@"肿瘤",@"肥胖人群"];
    self.bottomViewTitle.text = @"开设时长";
    [self showBottomView];
}


- (IBAction)countDownBtn:(id)sender {
    NSInteger count = self.chaterCount.text.integerValue-1;
    self.chaterCount.text = [NSString stringWithFormat:@"%ld", count];
    if (count<=1) {
        self.countDownBtn.enabled = NO;
    }
    else
    {
        self.countUpBtn.enabled = YES;
    }
    
}
- (IBAction)countUpBtn:(id)sender {
    NSInteger count = self.chaterCount.text.integerValue+1;
    self.chaterCount.text = [NSString stringWithFormat:@"%ld", count];
    if (count>=5) {
        self.countUpBtn.enabled = NO;
    }
    else
    {
        self.countDownBtn.enabled = YES;
    }
    
}




- (IBAction)confirmBtn:(id)sender {
//    self.workAge.text = _pickSelectedTest;
    CGRect frame = self.bottomView.frame;
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = YES;
        self.bottomView.frame = CGRectMake(0, ScreenHeight, frame.size.width, frame.size.height);
    }];
}


- (IBAction)cancelBtn:(id)sender {
    CGRect frame = self.bottomView.frame;
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = YES;
        self.bottomView.frame = CGRectMake(0, ScreenHeight, frame.size.width, frame.size.height);
    }];
}

#pragma mark - pickdelegate
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _pickArray.count;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _pickArray[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (_pickType==PickTypeForRoomType) {
        
    }
    else if (_pickType == PickTypeForRoomTime)
    {
        
    }
    
//    _pickSelectedTest = _pickArray[row];
}


@end
