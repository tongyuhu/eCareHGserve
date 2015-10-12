//
//  RHomeCareViewController.h
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/11.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface RHomeCareViewController : BaseNavViewController
<UIScrollViewDelegate>
@property(nonatomic ,weak) IBOutlet UIScrollView *myScrollView;
@property(nonatomic ,weak)IBOutlet UITableView *myTableView;
@end
