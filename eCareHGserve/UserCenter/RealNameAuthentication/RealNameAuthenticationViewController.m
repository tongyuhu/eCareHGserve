//
//  RealNameAuthenticationViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "RealNameAuthenticationViewController.h"
#import "BindingBankSuccessViewController.h"

@interface RealNameAuthenticationViewController ()<UIActionSheetDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@end

@implementation RealNameAuthenticationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)positivephotoBtn:(id)sender {
    UIActionSheet *sheet;
    // 判断是否支持相机
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        sheet  = [[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"拍照", @"从相册选择", nil];
    }
    else {
        sheet = [[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"从相册选择", nil];
    }
    
    sheet.tag = 100;
    
    [sheet showInView:self.view];
}
- (IBAction)oppositeBtn:(id)sender {
    UIActionSheet *sheet;
    // 判断是否支持相机
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        sheet  = [[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"拍照", @"从相册选择", nil];
    }
    else {
        sheet = [[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"从相册选择", nil];
    }
    
    sheet.tag = 101;
    
    [sheet showInView:self.view];
}
- (IBAction)summit:(id)sender {
    BindingBankSuccessViewController *vc = [[BindingBankSuccessViewController alloc] init];
    vc.verificationType = VerificationTypeForRealNameAuthentication;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSInteger sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        switch (buttonIndex) {
            case 0:
                return;
                break;
            case 1:
                sourceType = UIImagePickerControllerSourceTypeCamera;
                break;
            case 2:
                sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
                break;
            default:
                break;
                
        }
    }
    else
    {
        switch (buttonIndex) {
            case 0:
                return;
                break;
            case 1:
                sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
                break;
            default:
                break;
        }
    }

    if (actionSheet.tag == 100) {
        
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.view.tag = 500;
        imagePickerController.delegate = self;
        imagePickerController.allowsEditing = YES;
        imagePickerController.sourceType = sourceType;
        [self presentViewController:imagePickerController animated:YES completion:nil];
    }
    else if (actionSheet.tag == 101)
    {
        
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.view.tag = 501;
        imagePickerController.delegate = self;
        imagePickerController.allowsEditing = YES;
        imagePickerController.sourceType = sourceType;
        [self presentViewController:imagePickerController animated:YES completion:nil];
    }
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
    }];
    if (picker.view.tag ==500) {
        
    }
    else if (picker.view.tag == 501)
    {
        
    }
//    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
//    self.identityCardImage.image = image;
//    self.identityCardImage.hidden = NO;
//    CGRect frame = self.adjustView.frame;
//    self.adjustView.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.height, frame.size.height+100);
}



@end
