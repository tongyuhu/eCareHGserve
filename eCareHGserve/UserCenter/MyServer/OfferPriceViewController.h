//
//  OfferPriceViewController.h
//  eCareHGserve
//
//  Created by tongyuhu on 15/10/14.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@protocol OfferPriceViewControllerDelegate <NSObject>

- (void)offerPrice:(NSString *)price;

@end

@interface OfferPriceViewController : BaseNavViewController

@property (nonatomic, assign)id<OfferPriceViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *averagePrice;
@property (weak, nonatomic) IBOutlet UITextField *myPrice;

@end
