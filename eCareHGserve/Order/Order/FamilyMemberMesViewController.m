//
//  HomeMemberMesViewController.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "FamilyMemberMesViewController.h"
#import "FamilyMemberMesCell.h"
@interface FamilyMemberMesViewController ()

@end

@implementation FamilyMemberMesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavBar];
}
-(void)initNavBar{
    self.navTitle.text =@"家庭护理顾问";
}
#pragma mark - TableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 10.01f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section ==2) {
        return 30;
    }
    return 0.01f;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    return listTableArray.count;
    //    ;
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indentifier = @"FamilyMemberMesCell";
    FamilyMemberMesCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"FamilyMemberMesCell" owner:nil options:nil] objectAtIndex:0];
        cell.selectionStyle =UITableViewCellSelectionStyleNone;

    }
    //    NSDictionary *messageDic = listTableArray[indexPath.row];
    //    cell.messageLabel.text = messageDic[@"title"];
    //    cell.dateLaebl.text = [messageDic[@"insert_time"] substringToIndex:10];
    //    int statue = [messageDic[@"read_status"] intValue];
    //
    //    if (statue == 1) {
    //        cell.messageImage.image = [UIImage imageNamed:@"message_box_01"];
    //    }else{
    //        cell.messageImage.image = [UIImage imageNamed:@"message_box_02"];
    //    }
    //    cell.spline.hidden = NO;
    //    if (indexPath.row == listTableArray.count -1) {
    //        cell.spline.hidden = YES;
    //    }
    
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
