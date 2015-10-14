//
//  PointRecordTableViewCell.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PointRecordTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *discLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *pointsCount;

@end
