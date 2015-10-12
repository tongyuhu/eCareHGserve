//
//  NoDataViewController.h
//  eCareHGserve
//
//  Created by JinYanFeng on 15/10/10.
//  Copyright (c) 2015年 SHmoyi. All rights reserved.
//

#import "BaseNavViewController.h"

@interface NoDataViewController : BaseNavViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic ,strong)UITableView *myTableView;


@end
