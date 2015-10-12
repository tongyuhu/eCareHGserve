//
//  NowOrderCell.m
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "NowOrderCell.h"

@implementation NowOrderCell

- (void)awakeFromNib {
    [ self.serveStateBtn.layer setCornerRadius:3.0f];
    [ self.serveStateBtn.layer setMasksToBounds:YES];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)serveStateBtnClick:(id)sender {
    [self.delegate serveStateBtnClickDelegate:self.indexPath];
}
@end
