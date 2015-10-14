//
//  UserInformationViewController.m
//  eCareHG
//
//  Created by tongyuhu on 15/9/23.
//  Copyright (c) 2015年 JinYanFeng. All rights reserved.
//

#import "UserInformationViewController.h"
#import "FirstBindingViewController.h"
#import "ReplaceBindingBankViewController.h"
#import "ReplacePhoneNumViewController.h"
#import "RePasswordViewController.h"
#import "RealNameAuthenticationViewController.h"
@interface UserInformationViewController ()<UIActionSheetDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray *_pickArray;
    NSString *_pickSelectedTest;
}
@end

@implementation UserInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.scrollView.frame = CGRectMake(0, 64, ScreenWidth, ScreenHeight-64);
    self.scrollView.contentSize = CGSizeMake(ScreenWidth, 600);
    [self initNav];
    
}

- (void)initNav
{
    self.navTitle.text = @"账户管理";
    self.rightBtn.hidden = NO;
    [self.rightBtn setTitle:@"保存" forState:UIControlStateNormal];
    [self.rightBtn addTarget:self action:@selector(saveInfo) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)saveInfo
{
    
}
#pragma mark - action
- (IBAction)photoEditingBtn:(id)sender {
    UIActionSheet *sheet;
    
    // 判断是否支持相机
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        sheet  = [[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"拍照", @"从相册选择", nil];
    }
    else {
        sheet = [[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"从相册选择", nil];
    }
    
    sheet.tag = 255;
    
    [sheet showInView:self.view];
}

- (IBAction)genderBtn:(id)sender {
    UIActionSheet *sheet  = [[UIActionSheet alloc] initWithTitle:@"选择性别" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"男", @"女", nil];
    sheet.tag = 200;

    [sheet showInView:self.view];
}

- (void)initPick
{
    self.pickerView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth; //这里设置了就可以自定                                                                                                                           义高度了，一般默认是无法修改其216像素的高度
    self.pickerView.showsSelectionIndicator=YES;
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    _pickArray = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10及年以上",];
}
- (IBAction)workAgeBtn:(id)sender {
    
    [self initPick];
    
    CGRect frame = self.bottomView.frame;
    self.backgroundView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
    
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = NO;
        self.bottomView.frame = CGRectMake(0, ScreenHeight - frame.size.height, frame.size.width, frame.size.height);
    }];
    
    
}


// 让backgroundview退出界面
- (IBAction)confirmBtn:(id)sender {
    self.workAge.text = _pickSelectedTest;
    CGRect frame = self.bottomView.frame;
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = YES;
        self.bottomView.frame = CGRectMake(0, ScreenHeight, frame.size.width, frame.size.height);
    }];
}

// 让backgroundview退出界面
- (IBAction)cancelBtn:(id)sender {
    CGRect frame = self.bottomView.frame;
    [UIView animateWithDuration:0.2 animations:^{
        self.backgroundView.hidden = YES;
        self.bottomView.frame = CGRectMake(0, ScreenHeight, frame.size.width, frame.size.height);
    }];
}

- (IBAction)bankCardBtn:(id)sender {
    if ([self.bankNum.text isEqualToString:@"未绑定"]) {
        FirstBindingViewController *vc = [[FirstBindingViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else
    {
        ReplaceBindingBankViewController *vc = [[ReplaceBindingBankViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
}
- (IBAction)phoneNumBtn:(id)sender {
    ReplacePhoneNumViewController *vc = [[ReplacePhoneNumViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)rePasswordBtn:(id)sender {
    RePasswordViewController *vc = [[RePasswordViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)readNameAuthenBtn:(id)sender {
    RealNameAuthenticationViewController *vc = [[RealNameAuthenticationViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

#pragma mark - action sheet delegte
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (actionSheet.tag == 255) {
        NSUInteger sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        // 判断是否支持相机
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            switch (buttonIndex) {
                case 0:
                    return;
                case 1: //相机
                    sourceType = UIImagePickerControllerSourceTypeCamera;
                    break;
                case 2: //相册
                    sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                    break;
            }
        }
        else {
            if (buttonIndex == 0) {
                return;
            } else {
                sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
            }
        }
        // 跳转到相机或相册页面
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.delegate = self;
        imagePickerController.allowsEditing = YES;
        imagePickerController.sourceType = sourceType;
        
        [self presentViewController:imagePickerController animated:YES completion:^{}];
    }
    else if (actionSheet.tag == 200)
    {
        switch (buttonIndex) {
            case 0:
                return;
            case 1:
                self.gender.text = @"男";
                break;
            case 2:
                self.gender.text = @"女";
                break;
        }

    }
}

#pragma mark - image picker delegte
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:^{}];
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.photo.image = image;
    
   
    
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
    
    _pickSelectedTest = _pickArray[row];
}


@end
