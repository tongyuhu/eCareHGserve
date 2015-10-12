//
//  ReservOrderCell.h
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/11.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ResOrderCellDelegate<NSObject>
- (void)robBtnClickDelegate:(NSIndexPath*)index;
@end

@interface ReservOrderCell : UITableViewCell
@property(nonatomic,weak)IBOutlet UILabel *serveMesLab;
@property (weak, nonatomic) IBOutlet UILabel *serveTitleLab;
@property (weak, nonatomic) IBOutlet UILabel *serveNameLab;
@property (weak, nonatomic) IBOutlet UILabel *serveSexLab;
@property (weak, nonatomic) IBOutlet UILabel *serveOldLab;
@property (weak, nonatomic) IBOutlet UILabel *serveTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *serveAdressLab;
@property (weak, nonatomic) IBOutlet UILabel *phoneLab;
@property (weak, nonatomic) IBOutlet RoundBtn *quitBtn;

@property(nonatomic,assign)id <ResOrderCellDelegate>delegate;
@property(nonatomic,assign)NSIndexPath *indexPath;

- (IBAction)quitBtnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *robBtn;
- (IBAction)robBtnClick:(id)sender;


@end
