//
//  OfferPriceViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "OfferPriceViewController.h"

@interface OfferPriceViewController ()

@end

@implementation OfferPriceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)confirmBtn:(id)sender {
    [self.delegate offerPrice:self.myPrice.text];
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
