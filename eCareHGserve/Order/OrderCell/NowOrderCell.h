//
//  NowOrderCell.h
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol NowOrderCellDelegate<NSObject>
- (void)serveStateBtnClickDelegate:(NSIndexPath*)index;

@end
@interface NowOrderCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *sexLab;
@property (weak, nonatomic) IBOutlet UIButton *serveKind;
@property (weak, nonatomic) IBOutlet UILabel *serveTime;
@property (weak, nonatomic) IBOutlet UIButton *serveStateBtn;
@property(strong,nonatomic)NSIndexPath *indexPath;
@property(nonatomic,assign)id <NowOrderCellDelegate>delegate;
- (IBAction)serveStateBtnClick:(id)sender;

@end
