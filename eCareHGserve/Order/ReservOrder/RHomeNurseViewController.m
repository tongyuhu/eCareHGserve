//
//  RHomeNurseViewController.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/11.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "RHomeNurseViewController.h"
#import "FamilyMemberMesViewController.h"
@interface RHomeNurseViewController ()

@end

@implementation RHomeNurseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavBar];
    [self initScrollView];

}
-(void)initNavBar
{
    self.navTitle.text =@"家庭护理顾问";
}
- (void)initScrollView
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.myScrollView.frame =CGRectMake(0, 64, ScreenWidth, ScreenHeight-64);
    self.myScrollView.backgroundColor =[UIColor clearColor];
    self.myScrollView.contentSize = CGSizeMake(ScreenWidth, 568-64);
    
}
#pragma mark - TableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 25;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01f;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    return listTableArray.count;
    //    ;
    return 6;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indentifier = @"Cell";
    UILabel *nameLab =nil;
    UILabel *sexLab =nil;
    UILabel *oldLab =nil;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        
        nameLab =[[UILabel alloc]init];
        nameLab.frame =CGRectMake(20, 2, 60, 20);
        nameLab.textColor =GRAY3;
        nameLab.font =[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:nameLab];
        
        sexLab =[[UILabel alloc]init];
        sexLab.frame =CGRectMake(80, 2, 30, 20);
        sexLab.textColor =GRAY3;
        sexLab.font =[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:sexLab];
        
        oldLab =[[UILabel alloc]init];
        oldLab.frame =CGRectMake(130, 2, 60, 20);
        oldLab.textColor =GRAY3;
        oldLab.font =[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:oldLab];
    }
    nameLab.text =@"李霞";
    sexLab.text =@"男";
    oldLab.text =@"25岁";


       return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.view endEditing:YES];
    [self.myTableView deselectRowAtIndexPath:indexPath animated:YES];
    
    FamilyMemberMesViewController *homeVC =[[FamilyMemberMesViewController alloc]init];
    [self.navigationController pushViewController:homeVC animated:YES];

   
}
#pragma mark - 家庭详情
-(IBAction)familyMesBtnClick:(id)sender
{
    FamilyMemberMesViewController *homeVC =[[FamilyMemberMesViewController alloc]init];
    [self.navigationController pushViewController:homeVC animated:YES];


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
