//
//  HomeNurseViewController.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "HomeNurseViewController.h"
#import "FamilyMemberMesViewController.h"

@interface HomeNurseViewController ()

@end

@implementation HomeNurseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavBar];
}
-(void)initNavBar
{
    self.navTitle.text =@"家庭护理顾问";
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

- (IBAction)homeDetailBtnClick:(id)sender {
    FamilyMemberMesViewController *famVC =[[FamilyMemberMesViewController alloc] init];
    [self.navigationController pushViewController:famVC animated:YES];
}
- (IBAction)quitBtnClick:(id)sender {
}
- (IBAction)robOrderBtnClick:(id)sender {
}
@end
