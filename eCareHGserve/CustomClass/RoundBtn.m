//
//  RoundBtn.m
//  eCareHG
//
//  Created by JinYanFeng on 15/9/17.
//  Copyright (c) 2015年 JinYanFeng. All rights reserved.
//

#import "RoundBtn.h"
#define BACKPURPLE  1
#define BACKGRAY  2
#define borderColor  3

@implementation RoundBtn

-(void) drawRect:(CGRect)rect {
    
    [ self.layer setCornerRadius:3.0f];
    [ self.layer setMasksToBounds:YES];
//    if (self.mark ==BACKPURPLE) {
//        self.backgroundColor =PURPLE;
//    }
//    else if (self.mark ==BACKGRAY)
//    {
//        self.backgroundColor =GRAY9;
//
//    }
    
//    self.layer.borderWidth =0.5;

//    if (self.selected) {
//        self.backgroundColor =PURPLE;
//    }
//    else{
//           }
}
@end
