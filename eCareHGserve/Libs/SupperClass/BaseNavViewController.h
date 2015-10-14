//
//  BaseNavViewController.h
//  eCareHG
//
//  Created by JinYanFeng on 15/9/16.
//  Copyright (c) 2015年 JinYanFeng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, VerificationType) {
    VerificationTypeForBank,
    VerificationTypeForPhone,
    VerificationTypeForPassword,
    VerificationTypeForRealNameAuthentication,
    VerificationTypeForNorseCertication,
    VerificationTypeForHealthCertication,
    VerificationTypeForRankCertication
};

@interface BaseNavViewController : UIViewController

@property (nonatomic ,retain)UIView   *navView;
@property (nonatomic ,retain)UILabel  *navTitle;
@property (nonatomic ,retain)UIButton *LeftBtn;
@property (nonatomic ,retain)UIButton *rightBtn;

@property (nonatomic ,strong)MJRefreshHeaderView *refresh_header;
@property (nonatomic ,strong)MJRefreshFooterView *refresh_footer;
@property (nonatomic ,strong)MJRefreshBaseView *refresh_refreshView;
@end
