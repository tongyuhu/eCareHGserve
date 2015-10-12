//
//  HomeCareViewControllerrViewController.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "HomeCareViewController.h"
#import "DetailTimeViewController.h"
@interface HomeCareViewController ()

@end

@implementation HomeCareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavBar];
}
-(void)initNavBar
{
    self.navTitle.text =@"居家专护";
}
- (IBAction)timeDetailBtnClick:(id)sender {
    DetailTimeViewController *detVC =[[DetailTimeViewController alloc] init];
    [self.navigationController pushViewController:detVC animated:YES];
}
- (IBAction)quitBtnClick:(id)sender {
}
- (IBAction)robOrderBtnClick:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
