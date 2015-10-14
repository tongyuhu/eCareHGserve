//
//  MyPointsViewController.m
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/13.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "MyPointsViewController.h"
#import "PointRecordTableViewCell.h"
#import "pointsRecordModel.h"

@interface MyPointsViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *_pointDataArray;
}

@end

@implementation MyPointsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initDataArray];
    [self initTableView];
}

- (void)initTableView
{
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.tableFooterView = [[UIView alloc] init];
    
}

- (void)initDataArray
{
    _pointDataArray = [NSMutableArray array];
    for (int i = 0; i<5; i++) {
        pointsRecordModel *model = [[pointsRecordModel alloc] init];
        model.desc = @"hello";
        model.data = @"2018-4-3";
        model.pointsCount = @"+10";
        [_pointDataArray addObject:model];
    }
}
- (IBAction)PointsMarket:(id)sender {
}

- (IBAction)pointsRecord:(id)sender {
}
- (IBAction)pointsRule:(id)sender {
}

#pragma mark - tableViewDelegate dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"PointRecordTableViewCell";
    PointRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"PointRecordTableViewCell" owner:nil options:nil]lastObject];
    }
    pointsRecordModel *model = _pointDataArray[indexPath.row];
    cell.discLabel.text = model.desc;
    cell.dateLabel.text = model.data;
    cell.pointsCount.text = model.pointsCount;
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
