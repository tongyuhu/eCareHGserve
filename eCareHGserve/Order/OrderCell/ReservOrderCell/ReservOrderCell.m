//
//  ReservOrderCell.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/11.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "ReservOrderCell.h"

@implementation ReservOrderCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)quitBtnClick:(id)sender {
}
- (IBAction)robBtnClick:(id)sender {
    [self.delegate robBtnClickDelegate:self.indexPath];
}
@end
