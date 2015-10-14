//
//  CertificateAuthenticationViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "CertificateAuthenticationViewController.h"
#import "UploadCerticateViewController.h"

@interface CertificateAuthenticationViewController ()

@end

@implementation CertificateAuthenticationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)norseBtn:(id)sender {
    UploadCerticateViewController *vc = [[UploadCerticateViewController alloc] init];
    vc.vericationType = VerificationTypeForNorseCertication;
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)healthBtn:(id)sender {
    UploadCerticateViewController *vc = [[UploadCerticateViewController alloc] init];
    vc.vericationType = VerificationTypeForHealthCertication;
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)rankBtn:(id)sender {
    UploadCerticateViewController *vc = [[UploadCerticateViewController alloc] init];
    vc.vericationType = VerificationTypeForRankCertication;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
