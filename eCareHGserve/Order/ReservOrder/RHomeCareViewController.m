//
//  RHomeCareViewController.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/11.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "RHomeCareViewController.h"

@interface RHomeCareViewController ()

@end

@implementation RHomeCareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavBar];
    [self initScrollView];
    
}
-(void)initNavBar
{
    self.navTitle.text =@"居家专护";
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        
        nameLab =[[UILabel alloc]init];
        nameLab.frame =CGRectMake(20, 2, 100, 20);
        nameLab.textColor =GRAY3;
        nameLab.font =[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:nameLab];
        
        sexLab =[[UILabel alloc]init];
        sexLab.frame =CGRectMake(140, 2, 100, 20);
        sexLab.textColor =GRAY3;
        sexLab.font =[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:sexLab];
        
       
    }
    nameLab.text =@"2015.8.19";
    sexLab.text =@"13:00-15:00";
    
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.view endEditing:YES];
    [self.myTableView deselectRowAtIndexPath:indexPath animated:YES];

    
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
