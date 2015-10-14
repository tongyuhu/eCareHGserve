//
//  MyServerViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "MyServerViewController.h"
#import "OfferPriceViewController.h"

typedef NS_ENUM(NSInteger, PickType) {
    PickTypeForItemSelect,
    PickTypeForAreaSelect
};

@interface MyServerViewController ()<UIPickerViewDataSource, UIPickerViewDelegate, OfferPriceViewControllerDelegate>
{
    NSArray *_pickArray;
    PickType _pickType;
}
@end

@implementation MyServerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)itemSelectBtn:(id)sender {
    
    _pickType = PickTypeForItemSelect;
    _pickArray = @[@"10分钟",@"15分钟",@"20分钟",@"25分钟",@"30分钟",@"35分钟",@"40分钟"];
    self.bottomViewTitle.text = @"咨询种类";
    [self showBottomView];

}
- (IBAction)offerBtn:(id)sender {
    OfferPriceViewController *vc = [[OfferPriceViewController alloc] init];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (IBAction)areaSelectBtn:(id)sender {
    _pickType = PickTypeForItemSelect;
    _pickArray = @[@"10分钟",@"15分钟",@"20分钟",@"25分钟",@"30分钟",@"35分钟",@"40分钟"];
    self.bottomViewTitle.text = @"咨询种类";
    [self showBottomView];
}
- (IBAction)saveBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)cancelBtn:(id)sender {
    CGRect frame = self.bottomView.frame;
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = YES;
        self.bottomView.frame = CGRectMake(0, ScreenHeight, frame.size.width, frame.size.height);
    }];

}
- (IBAction)confirmBtn:(id)sender {
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
    if (_pickType==PickTypeForItemSelect) {
        
    }
    else if (_pickType == PickTypeForAreaSelect)
    {
        
    }
    
    //    _pickSelectedTest = _pickArray[row];
}
#pragma mark - OfferPriceViewDelegate
- (void)offerPrice:(NSString *)price
{
    self.offer.text = price;
}

@end
